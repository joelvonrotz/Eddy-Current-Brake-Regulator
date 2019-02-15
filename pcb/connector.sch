EESchema Schematic File Version 4
LIBS:wirbelstrombremse_regler-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L kicad_joelvonrotz_connector:CON_PHOENIX_1725656 J?
U 1 1 5C26E024
P 3900 5100
AR Path="/5C26E024" Ref="J?"  Part="1" 
AR Path="/5C2635A4/5C26E024" Ref="J6"  Part="1" 
F 0 "J6" H 4128 4996 50  0000 L CNN
F 1 "CON_PHOENIX_1725656" H 2900 6300 50  0001 L TNN
F 2 "MECHANICAL:CON_MPT_1725656" H 2900 6200 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/2309717.pdf" H 2900 6800 50  0001 L TNN
F 4 "1725656" H 4128 4905 50  0000 L CNN "ValueSymbol"
F 5 "277-1273-ND" H 2900 6600 50  0001 L TNN "DigikeyNumber"
F 6 "651-1725656" H 2900 6500 50  0001 L TNN "MouserNumber"
F 7 "3041359" H 2900 6700 50  0001 L TNN "FarnellNumber"
	1    3900 5100
	1    0    0    -1  
$EndComp
Text Label 2100 5200 0    50   ~ 0
SensorSpeed
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C26E02B
P 3600 5400
AR Path="/5C26E02B" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C26E02B" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 3800 5500 50  0001 C CNN
F 1 "GND" H 3596 5225 50  0000 C CNN
F 2 "" H 3600 5600 50  0001 C CNN
F 3 "" H 3600 5600 50  0001 C CNN
	1    3600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5300 3600 5300
Wire Wire Line
	3600 5300 3600 5400
$Comp
L kicad_joelvonrotz_connector:CON_PHOENIX_1725656 J?
U 1 1 5C26E037
P 6500 5200
AR Path="/5C26E037" Ref="J?"  Part="1" 
AR Path="/5C2635A4/5C26E037" Ref="J7"  Part="1" 
F 0 "J7" H 6728 5096 50  0000 L CNN
F 1 "CON_PHOENIX_1725656" H 5500 6400 50  0001 L TNN
F 2 "MECHANICAL:CON_MPT_1725656" H 5500 6300 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/2309717.pdf" H 5500 6900 50  0001 L TNN
F 4 "1725656" H 6728 5005 50  0000 L CNN "ValueSymbol"
F 5 "277-1273-ND" H 5500 6700 50  0001 L TNN "DigikeyNumber"
F 6 "651-1725656" H 5500 6600 50  0001 L TNN "MouserNumber"
F 7 "3041359" H 5500 6800 50  0001 L TNN "FarnellNumber"
	1    6500 5200
	1    0    0    -1  
$EndComp
Text Label 5800 5400 0    50   ~ 0
MAGNET
Wire Wire Line
	5800 5400 6300 5400
$Comp
L kicad_joelvonrotz_power:+UPOW #PWR?
U 1 1 5C26E03F
P 6100 5200
AR Path="/5C26E03F" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C26E03F" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 6100 5370 50  0001 C CNN
F 1 "+UPOW" H 6080 5373 50  0000 C CNN
F 2 "" H 6100 5400 50  0001 C CNN
F 3 "" H 6100 5400 50  0001 C CNN
	1    6100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5300 6100 5200
Wire Wire Line
	6300 5300 6100 5300
Text Notes 5500 4300 0    100  ~ 20
Magnet-Connector
Text Notes 780  4320 0    100  ~ 20
Speedsensor Connector
$Comp
L kicad_joelvonrotz_connector:CON_MOLEX_548190572 J5
U 1 1 5C29FDB7
P 3600 2000
F 0 "J5" H 4028 1696 50  0000 L CNN
F 1 "CON_MOLEX_548190572" H 2600 3200 50  0001 L TNN
F 2 "MECHANICAL:MOLEX_54819_0572" H 2600 3100 50  0001 L TNN
F 3 "https://www.molex.com/pdm_docs/sd/548190572_sd.pdf" H 2600 3700 50  0001 L TNN
F 4 "USB Mini B" H 4028 1605 50  0000 L CNN "ValueSymbol"
F 5 "WM17116CT-ND" H 2600 3500 50  0001 L TNN "DigikeyNumber"
F 6 "538-54819-0572" H 2600 3400 50  0001 L TNN "MouserNumber"
F 7 "9786473" H 2600 3600 50  0001 L TNN "FarnellNumber"
	1    3600 2000
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C2A11DF
P 3100 2800
AR Path="/5C2A11DF" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C2A11DF" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 3300 2900 50  0001 C CNN
F 1 "GND" H 3096 2625 50  0000 C CNN
F 2 "" H 3100 3000 50  0001 C CNN
F 3 "" H 3100 3000 50  0001 C CNN
	1    3100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2800 3100 2500
Wire Wire Line
	3100 2500 3400 2500
$Comp
L kicad_joelvonrotz_passive:CAP_10uF_0805 C10
U 1 1 5C2A179D
P 2700 2600
F 0 "C10" V 2712 2728 50  0000 L CNN
F 1 "CAP_10uF_0805" H 1700 3465 50  0001 L TNN
F 2 "PASSIVES:CAP_0805" H 1700 4200 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/2079185.pdf" H 1700 4300 50  0001 L TNN
F 4 "GRM21BR61E106MA73L" H 1700 4000 50  0001 L TNN "ValueSymbol"
F 5 "490-10748-1-ND" H 1700 3600 50  0001 L TNN "DigikeyNumber"
F 6 "81-GRM21BR61E106MA3L" H 1700 3700 50  0001 L TNN "MouserNumber"
F 7 "2611941" H 1700 3800 50  0001 L TNN "FarnellNumber"
F 8 "10uF" V 2795 2728 39  0000 L CNN "resistance"
	1    2700 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2100 3400 2100
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C2A400C
P 2700 2800
AR Path="/5C2A400C" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C2A400C" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 2900 2900 50  0001 C CNN
F 1 "GND" H 2696 2625 50  0000 C CNN
F 2 "" H 2700 3000 50  0001 C CNN
F 3 "" H 2700 3000 50  0001 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2100 2700 2500
Wire Wire Line
	2600 2200 3400 2200
Wire Wire Line
	2600 2300 3400 2300
NoConn ~ 3400 2400
Text HLabel 2600 2200 0    50   Input ~ 10
USB-
Text HLabel 2600 2300 0    50   Input ~ 10
USB+
Text Notes 2400 1550 0    100  ~ 20
USB Connector
Text Notes 2400 1850 0    50   ~ 0
The USB connection is used to exchange data \nbetween the MCU and the PC.Data, such as \nthe desired speed, can be set.
Text Notes 780  4420 0    50   ~ 0
The Speedsensor is used for calculating the wheel speed.
Text Notes 5500 4500 0    50   ~ 0
The magnet is used to decrease the speed by creating \neddy current on the brake sheet
$Comp
L kicad_joelvonrotz_connector:SL_100mil_2x3p J?
U 1 1 5C3ACE0D
P 6600 2300
AR Path="/5C3ACE0D" Ref="J?"  Part="1" 
AR Path="/5C22DAA4/5C3ACE0D" Ref="J?"  Part="1" 
AR Path="/5C2635A4/5C3ACE0D" Ref="J8"  Part="1" 
F 0 "J8" H 6750 2465 50  0000 C CNN
F 1 "SL_100mil_2x3p" H 6750 2374 50  0000 C CNN
F 2 "MECHANICAL:SL_100MIL_2x3p" H 5600 3400 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/1992055.pdf" H 5600 4000 50  0001 L TNN
F 4 "TSW-103-07-F-D" H 5600 3500 50  0001 L TNN "ValueSymbol"
F 5 "SAM10846-ND" H 5600 3800 50  0001 L TNN "DigikeyNumber"
F 6 "200-TSW10307FD" H 5600 3700 50  0001 L TNN "MouserNumber"
F 7 "2667449" H 5600 3900 50  0001 L TNN "FarnellNumber"
	1    6600 2300
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_power:+5V #PWR?
U 1 1 5C3ACE19
P 7800 2300
AR Path="/5C3ACE19" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C3ACE19" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C3ACE19" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 7800 2470 50  0001 C CNN
F 1 "+5V" H 7780 2473 50  0000 C CNN
F 2 "" H 7800 2500 50  0001 C CNN
F 3 "" H 7800 2500 50  0001 C CNN
	1    7800 2300
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_passive:CAP_100nF_0603 C?
U 1 1 5C3ACE24
P 7800 2700
AR Path="/5C3ACE24" Ref="C?"  Part="1" 
AR Path="/5C22DAA4/5C3ACE24" Ref="C?"  Part="1" 
AR Path="/5C2635A4/5C3ACE24" Ref="C11"  Part="1" 
F 0 "C11" V 7812 2828 50  0000 L CNN
F 1 "CAP_100nF_0603" H 6800 3565 50  0001 L TNN
F 2 "PASSIVES:CAP_0603" H 6800 4300 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/1958469.pdf" H 6800 4400 50  0001 L TNN
F 4 "885012206020" H 6800 4100 50  0001 L TNN "ValueSymbol"
F 5 "732-7939-1-ND" H 6800 3700 50  0001 L TNN "DigikeyNumber"
F 6 "710-885012206020" H 6800 3800 50  0001 L TNN "MouserNumber"
F 7 "2495168" H 6800 3900 50  0001 L TNN "FarnellNumber"
F 8 "100nF" V 7895 2828 39  0000 L CNN "resistance"
	1    7800 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2600 7800 2300
Wire Wire Line
	7100 2400 7200 2400
Wire Wire Line
	7200 2400 7200 2300
Wire Wire Line
	7200 2300 7800 2300
Connection ~ 7800 2300
Wire Wire Line
	7100 2600 7200 2600
Wire Wire Line
	7200 2600 7200 2700
Text Label 7600 2500 2    50   ~ 0
PROG_MOSI
Text Label 5900 2400 0    50   ~ 0
PROG_MISO
Wire Wire Line
	5900 2400 6400 2400
Text Label 5900 2500 0    50   ~ 0
PROG_SCK
Wire Wire Line
	5900 2500 6400 2500
Text Label 5900 2600 0    50   ~ 0
~RESET~
Wire Wire Line
	5900 2600 6400 2600
Text Notes 5900 1825 0    100  ~ 20
ISP Connector
Text Notes 5900 1925 0    50   ~ 0
Used to programm the microcontroller
$Comp
L kicad_joelvonrotz_passive:RES_10k_0603 R8
U 1 1 5C3B516E
P 3100 4900
F 0 "R8" V 3162 4968 50  0000 L CNN
F 1 "RES_10k_0603" H 2100 5800 50  0001 L TNN
F 2 "PASSIVES:RES_0603" H 2100 6500 50  0001 L TNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_9.pdf" H 2100 6600 50  0001 L TNN
F 4 "RC0603FR-0710KL" H 2100 6300 50  0001 L TNN "ValueSymbol"
F 5 "311-10.0KHRCT-ND" H 2100 5900 50  0001 L TNN "DigikeyNumber"
F 6 "603-RC0603FR-0710KL" H 2100 6000 50  0001 L TNN "MouserNumber"
F 7 "9238603" H 2100 6100 50  0001 L TNN "FarnellNumber"
F 8 "10k" V 3245 4968 39  0000 L CNN "resistance"
	1    3100 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 5200 3700 5200
$Comp
L kicad_joelvonrotz_power:+5V #PWR0131
U 1 1 5C3B8801
P 3100 4800
F 0 "#PWR0131" H 3100 4970 50  0001 C CNN
F 1 "+5V" H 3080 4973 50  0000 C CNN
F 2 "" H 3100 5000 50  0001 C CNN
F 3 "" H 3100 5000 50  0001 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
Text HLabel 5900 2400 0    50   Input ~ 10
PROG_MISO
Text HLabel 5900 2500 0    50   Input ~ 10
PROG_SCK
Text HLabel 5900 2600 0    50   Input ~ 10
MCU_RESET
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C3BF0F9
P 7200 2700
AR Path="/5C3BF0F9" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C3BF0F9" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C3BF0F9" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 7400 2800 50  0001 C CNN
F 1 "GND" H 7196 2525 50  0000 C CNN
F 2 "" H 7200 2900 50  0001 C CNN
F 3 "" H 7200 2900 50  0001 C CNN
	1    7200 2700
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C3C02C7
P 7800 2900
AR Path="/5C3C02C7" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C3C02C7" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C3C02C7" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 8000 3000 50  0001 C CNN
F 1 "GND" H 7796 2725 50  0000 C CNN
F 2 "" H 7800 3100 50  0001 C CNN
F 3 "" H 7800 3100 50  0001 C CNN
	1    7800 2900
	1    0    0    -1  
$EndComp
Text HLabel 7900 2500 2    50   Input ~ 10
PROG_MOSI
Wire Wire Line
	7100 2500 7900 2500
Text HLabel 5800 5400 0    50   Input ~ 10
MAGNET
Text HLabel 1300 5200 0    50   Input ~ 10
MCU_SensorSpeed
NoConn ~ 3400 2600
$Comp
L kicad_joelvonrotz_passive:CAP_100nF_0603 C16
U 1 1 5C10C893
P 2700 5300
F 0 "C16" V 2810 5310 50  0000 L CNN
F 1 "CAP_100nF_0603" H 1700 6165 50  0001 L TNN
F 2 "PASSIVES:CAP_0603" H 1700 6900 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/1958469.pdf" H 1700 7000 50  0001 L TNN
F 4 "885012206020" H 1700 6700 50  0001 L TNN "ValueSymbol"
F 5 "732-7939-1-ND" H 1700 6300 50  0001 L TNN "DigikeyNumber"
F 6 "710-885012206020" H 1700 6400 50  0001 L TNN "MouserNumber"
F 7 "2495168" H 1700 6500 50  0001 L TNN "FarnellNumber"
F 8 "100nF" V 2810 5110 39  0000 L CNN "resistance"
	1    2700 5300
	0    1    1    0   
$EndComp
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C10C899
P 2700 5500
AR Path="/5C10C899" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C10C899" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2900 5600 50  0001 C CNN
F 1 "GND" H 2696 5325 50  0000 C CNN
F 2 "" H 2700 5700 50  0001 C CNN
F 3 "" H 2700 5700 50  0001 C CNN
	1    2700 5500
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_passive:RES_10k_0603 R9
U 1 1 5C10D555
P 2800 5200
F 0 "R9" H 2800 5300 50  0000 C CNN
F 1 "RES_10k_0603" H 1800 6100 50  0001 L TNN
F 2 "PASSIVES:RES_0603" H 1800 6800 50  0001 L TNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_9.pdf" H 1800 6900 50  0001 L TNN
F 4 "RC0603FR-0710KL" H 1800 6600 50  0001 L TNN "ValueSymbol"
F 5 "311-10.0KHRCT-ND" H 1800 6200 50  0001 L TNN "DigikeyNumber"
F 6 "603-RC0603FR-0710KL" H 1800 6300 50  0001 L TNN "MouserNumber"
F 7 "9238603" H 1800 6400 50  0001 L TNN "FarnellNumber"
F 8 "10k" H 2900 5200 39  0000 C CNN "resistance"
	1    2800 5200
	1    0    0    -1  
$EndComp
Connection ~ 3100 5200
Wire Wire Line
	2700 5200 2100 5200
Connection ~ 2700 5200
$Comp
L kicad_joelvonrotz_IC:SN74LVC2G14 U4
U 1 1 5C111D96
P 1900 5100
F 0 "U4" H 2100 5265 50  0000 C CNN
F 1 "SN74LVC2G14" H 2100 5174 50  0000 C CNN
F 2 "IC:SOT-23-6" H 900 6400 50  0001 L TNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc2g14.pdf" H 900 6800 50  0001 L TNN
F 4 "SN74LVC2G14DBVR" H 900 6500 50  0001 L TNN "ValueSymbol"
F 5 "296-13010-1-ND" H 900 6600 50  0001 L TNN "DigikeyNumber"
F 6 "595-SN74LVC2G14DBVR" H 900 6700 50  0001 L TNN "MouserNumber"
F 7 "1470884" H 900 6300 50  0001 L TNN "FarnellNumber"
	1    1900 5100
	-1   0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C1152FD
P 1300 5500
AR Path="/5C1152FD" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C1152FD" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1500 5600 50  0001 C CNN
F 1 "GND" H 1296 5325 50  0000 C CNN
F 2 "" H 1300 5700 50  0001 C CNN
F 3 "" H 1300 5700 50  0001 C CNN
	1    1300 5500
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_power:+5V #PWR02
U 1 1 5C11601F
P 2100 5500
F 0 "#PWR02" H 2100 5670 50  0001 C CNN
F 1 "+5V" H 2080 5673 50  0000 C CNN
F 2 "" H 2100 5700 50  0001 C CNN
F 3 "" H 2100 5700 50  0001 C CNN
	1    2100 5500
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_passive:CAP_100nF_0603 C15
U 1 1 5C117748
P 2100 5600
F 0 "C15" V 2210 5610 50  0000 L CNN
F 1 "CAP_100nF_0603" H 1100 6465 50  0001 L TNN
F 2 "PASSIVES:CAP_0603" H 1100 7200 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/1958469.pdf" H 1100 7300 50  0001 L TNN
F 4 "885012206020" H 1100 7000 50  0001 L TNN "ValueSymbol"
F 5 "732-7939-1-ND" H 1100 6600 50  0001 L TNN "DigikeyNumber"
F 6 "710-885012206020" H 1100 6700 50  0001 L TNN "MouserNumber"
F 7 "2495168" H 1100 6800 50  0001 L TNN "FarnellNumber"
F 8 "100nF" V 2210 5410 39  0000 L CNN "resistance"
	1    2100 5600
	0    1    1    0   
$EndComp
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C11774E
P 2100 5800
AR Path="/5C11774E" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C11774E" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 2300 5900 50  0001 C CNN
F 1 "GND" H 2096 5625 50  0000 C CNN
F 2 "" H 2100 6000 50  0001 C CNN
F 3 "" H 2100 6000 50  0001 C CNN
	1    2100 5800
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_IC:SN74LVC2G14 U4
U 2 1 5C11884A
P 1500 6400
F 0 "U4" H 1600 6565 50  0000 C CNN
F 1 "SN74LVC2G14" H 1600 6474 50  0000 C CNN
F 2 "IC:SOT-23-6" H 500 7700 50  0001 L TNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc2g14.pdf" H 500 8100 50  0001 L TNN
F 4 "SN74LVC2G14DBVR" H 500 7800 50  0001 L TNN "ValueSymbol"
F 5 "296-13010-1-ND" H 500 7900 50  0001 L TNN "DigikeyNumber"
F 6 "595-SN74LVC2G14DBVR" H 500 8000 50  0001 L TNN "MouserNumber"
F 7 "1470884" H 500 7600 50  0001 L TNN "FarnellNumber"
	2    1500 6400
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C11A559
P 1300 6500
AR Path="/5C11A559" Ref="#PWR?"  Part="1" 
AR Path="/5C2635A4/5C11A559" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1500 6600 50  0001 C CNN
F 1 "GND" H 1296 6325 50  0000 C CNN
F 2 "" H 1300 6700 50  0001 C CNN
F 3 "" H 1300 6700 50  0001 C CNN
	1    1300 6500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
