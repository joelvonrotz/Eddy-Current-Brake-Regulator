#define F_CPU 16000000UL
#define __AVR_ATmega328PB__
//=================================================================================================
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdlib.h>
//=================================================================================================
/* EDDY CURRENT BRAKE
 * This code is written for our vocational matura school project, a regulated eddy current brake.
 * By regulated it's meant to limit the velocity of a wheel to a preset velocity. Using Timers 
 * and Interrupts, the ATMEGA328PB (note the B(ee) as it contains 3 16-Bit timers) can measure
 * speed and put out a PID-regulated PWM. Obviously, this PWM will be controling the magnet, that
 * creates the magnetic field and the eddy current.
 * 
 * For those having the ability to understand the programm, please feel free to suggest any 
 * changes to the code. If everything works out (or if not) I want to continue working on this.
*/
//=================================================================================================
#define TIMER_SPEED_COMPARE_VALUE       1562    //this will result in a interval of ~25ms
#define TIMER_REGULATOR_COMPARE_VALUE   1250    //this will result in a interval of ~20ms
#define TIMER_SPEED_PRESCALER           8       //prescaler of the speed counter (overflow)

#define WHEEL_DIAMETER_m  0.3
#define WHEEL_RADIUS_m    (WHEEL_DIAMETER_m/2)
#define PI                3.1415926535897932384f


#define USB_Readable      (UCSR0A & (1<<RXC0)) //check if data is available in the register DR0
#define PWM_16BIT_TOP     0x0190

#define TIMER_FREQUENCY   0.000016f

#define I                 7       //Bit position of Global Interrupt Enable Bit
//=================================================================================================
/* PID-regulator variables
 * 
 */
const float _Kp   = 0.5f; //proportional factor
const float _Kd   = 0.10f; //derivative factor
const float _Ki   = 0.3f; //integral factor
const float _dt   = 0.02f;        //delta timer (of timer) 20ms
      float error = 0;    //e = w-r -> error = desired - current 
      float Dout    = 0;    
      float Pout    = 0;
      float Iout    = 0;
      float _old_error = 0; //used for derivative term
      float _integral = 0;
const float _max  = 1.0f;
const float _min  = 0.0000000001f; //since comparing floats doesn't really work that well, a very small number can be still used for comparing
      float output = 0;

//=================================================================================================
//Actually those definions don't really interact with the code itself, it's mostly to know which 
//function uses which timer
#define PWM_TIMER         TIMER1
#define REGULATOR_TIMER   TIMER3
#define SPEED_TIMER       TIMER4
#define SPEED_INTERRUPT   TIMER4_CAPTURE
//================================================================================================
#define ENTER_KEY         13

int       time_counter        = 0;
float     speed_time_current  = 0;

float     speed_desired;
float     speed_current;

bool      flag;
uint16_t  usart_index;
char      usart_buffer[32];
char      dummy_buffer[32];
char      result_buffer[32];

// FUNKTIONSPROTOTYP ==============================================================================
bool      init_system(void);
bool      init_regulator(void);
bool      init_speedCalculator(void);
bool      init_usart(uint32_t baudrate);
bool      init_pwm(void);

void      enable_interrupts(void);
void      start_regulator(void);
void      start_speedCalculator(void);
void      start_pwm(float dutycycle);
void      pwm_dutycycle(float dutycycle);

void      usb_transmit(uint8_t data);
void      usb_transmitString(const char* data);
uint8_t   usb_receive(void);
void      usb_handler(void);

// MAIN ===========================================================================================
int main(void)
{
  init_system();
  init_pwm();
  init_regulator();
  init_speedCalculator();
  init_usart(115200);
  enable_interrupts();
  start_speedCalculator();
  start_pwm(0.0f);
  start_regulator();
  while(1)
  {
    usb_handler();
    if(flag)
    {
        flag = 0;
        dtostrf(speed_time_current,8,6,dummy_buffer);    //Atmel doesn't allow for floats to be printed -> dtostrf turns the float into a String based on the set size
        sprintf(result_buffer,"%s\n\r",dummy_buffer); //afterwards the string can be filled with additional commands
        usb_transmitString(result_buffer);        //

        /*doesn't seem to really work, oh well, should look into after documentation has been written*/
        //dtostrf(output,8,6,dummy_buffer);    //Atmel doesn't allow for floats to be printed -> dtostrf turns the float into a String based on the set size
        //sprintf(result_buffer,"%s\n\r",dummy_buffer); //afterwards the string can be filled with additional commands
        //usb_transmitString(result_buffer);        //
        
    }
  }
}

// USB ============================================================================================
/* USB HANDLER
 * The USB handler is used for receiving commands.
 */
void usb_handler(void)
{
    if(USB_Readable)
    {
      usart_buffer[usart_index] = usb_receive();
      if(usart_buffer[usart_index] == NULL || usart_buffer[usart_index] == ENTER_KEY)
      { //indicate that a full message has been sent
        if(usart_buffer[0] == '?' && usart_buffer[1] == 's')
        {
          for(int x = 0 ; x < 30 ; x++)
          {
            usart_buffer[x] = usart_buffer[2+x];
          }
          speed_desired = static_cast<float>(atof(usart_buffer));
          
          dtostrf(speed_desired,5,4,dummy_buffer);    //Atmel doesn't allow for floats to be printed -> dtostrf turns the float into a String based on the set size
          sprintf(usart_buffer,"!s%s\r",dummy_buffer); //afterwards the string can be filled with additional commands
          usb_transmitString(usart_buffer);        //
          
        }
        usart_index = 0;
      }
      else
      {
        usart_index++;
      }
    }
}

void usb_transmit(uint8_t data)
{
  while (!( UCSR0A & (1 << UDRE0))); // wait while register is free
  UDR0 = data; // load data in the register
}

void usb_transmitString(const char* data)
{
  uint16_t index = 0;
  while(data[index] != '\0') //stop sending when null (End of Message) has been reached
  {
    while (!(UCSR0A & (1 << UDRE0))); // wait while register is free
    UDR0 = data[index]; // load data in the register
    index++;
  }
}

uint8_t usb_receive(void)
{
  return UDR0;
}

// INITIALIZATION =================================================================================
bool init_system(void)
{
  usart_index        = 0;
  time_counter       = 0.0;
  speed_time_current = 0;
}

bool init_pwm(void)
{
  DDRB   |= (1 << DDRB1); //set timer-output as an output

  TCCR1A |= (1 << COM1A1); //map PWM-output to OC1A as non-inverting -> PWM-mode
  TCCR1A |= (1 << WGM11);  //configure timer 1 to Fast-PWM 16-Bit
  TCCR1B |= (1 << WGM12) | (1 << WGM13); // ^^^
  ICR1    = PWM_16BIT_TOP; //When timer reaches this value, the timer resets
  OCR1A   = 0x00; //set duty cycle to 0% / Small spikes happen, which is noted in the datasheet
}

bool init_speedCalculator(void)
{
  TCCR4B |= (1 << WGM42);
  TIMSK4 |= (1 << OCIE4A) | (1 << ICIE4);
  TCNT4   = 0x0000;
  OCR4A   = TIMER_SPEED_COMPARE_VALUE - 1;
}

bool init_regulator(void)
{
  TCCR3B |= (1 << WGM32);
  TIMSK3 |= (1 << OCIE3A);
  TCNT3   = 0x0000;
  OCR3A   = TIMER_REGULATOR_COMPARE_VALUE - 1;
}

bool init_usart(uint32_t baudrate)
{
  static uint16_t baud;
  
  if(baudrate == 115200)
  {
    baud = 8;
  }
  else
  {
    //formula to calculate baudrate register value for the MCU
    baud = static_cast<uint16_t>((F_CPU/(16 * baudrate)) - 1);
  }
  UBRR0L  = baud & 0xFF;
  UBRR0H  = (baud >> 8) & 0xFF;
  UCSR0C |= (1 << UCSZ00) | (1 << UCSZ01);  //8-bit mode
  
  UCSR0B |= (1<<TXEN0) | (1<<RXEN0);        //enable Transmitter and Receiver
}

// START ==========================================================================================
/* START TIMER
 * By setting a prescaler, the timer for the regulator and for the speed calculator are activated
 */
void start_regulator(void)
{
  TCCR3B |= (1 << CS32);
}
void start_speedCalculator(void)
{
  TCCR4B |= (1 << CS42);
}

/* START PWM
 * As the name of the function says, it enables the PWM and sets the duty cycle.
 * This function is separate from the initialization function to achieve a better code-structure.
 */
void start_pwm(float dutycycle)
{
  OCR0A   = static_cast<uint16_t>(PWM_16BIT_TOP * dutycycle);
  TCCR0B |= (1 << CS00); //set prescaler to 1 / start timer
}

// OTHER FUNCTIONS ================================================================================
/* ENABLE INTERRUPTS
 * This enables the use of the interrupts -> Timer Capture Interrupt, Timer Interrupt
 */
void enable_interrupts(void)
{
  SREG |= (1 << I);
}

/* PWM SET DUTYCYCLE
 * 
 */
void pwm_dutycycle(float dutycycle)
{
  OCR0A   = static_cast<uint16_t>(PWM_16BIT_TOP * dutycycle);
}

// ISR ============================================================================================
/* SPEED CAPTURE
 * The capture feature is used to get the speed of the wheel. By adding the timer value and
 * the overflow times (below) the total amount of time from one impulse to the next
 * impulse can be calculated.
 */
ISR(TIMER4_CAPT_vect)
{
  TCNT4 = 0;
  speed_time_current = (time_counter * 0.024992f + TIMER_FREQUENCY * static_cast<float>(ICR4));
  speed_current      = (0.15*2*PI/speed_time_current);
  time_counter       = 0;
  flag  = 1;
}
/* SPEED OVERFLOW
 * When there is no impulse for the speed time, a overflow occurs (not a real one, but just a counter, 
 * indicating a specific time has passed, which can be added together at the end).
 */
ISR(TIMER4_COMPA_vect)
{
  time_counter++;
}

/* REGULATOR COMPARE (PID Regulator)
 * 
 */
ISR(TIMER3_COMPA_vect)
{
  error = speed_current - speed_desired;

  Pout = _Kp * error;

  _integral += error * _dt;
  Iout = _Ki * _integral;

  float _derivative = (error - _old_error) / _dt;
  Dout = _Kd * _derivative;

  output = Pout + Dout + Iout;

  if(output > _max)
  {
    pwm_dutycycle(1.0f);
  }
  else if(output < _min)
  {
    pwm_dutycycle(0.0f);
  }
  else
  {
    pwm_dutycycle(output);
  }

  _old_error = error;
}
//=================================================================================================
