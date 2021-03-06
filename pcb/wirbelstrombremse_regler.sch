EESchema Schematic File Version 4
LIBS:wirbelstrombremse_regler-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1800 2200 1500 2000
U 5C22DAA4
F0 "MicroControl" 100
F1 "microcontrol.sch" 100
F2 "PROG_MOSI" I R 3300 2400 100
F3 "PROG_MISO" I R 3300 2600 100
F4 "PROG_SCK" I R 3300 2800 100
F5 "MCU_RESET" I R 3300 3500 100
F6 "MCU_SensorSpeed" I R 3300 3800 100
F7 "MAGNET" I R 3300 4000 100
F8 "MCU_TX" I R 3300 3100 100
F9 "MCU_RX" I R 3300 3300 100
$EndSheet
$Sheet
S 6900 5000 2000 1000
U 5C263436
F0 "Power" 100
F1 "power.sch" 100
$EndSheet
$Sheet
S 8000 2200 2000 2100
U 5C2635A4
F0 "Connector" 100
F1 "connector.sch" 100
F2 "USB-" I L 8000 3300 100
F3 "USB+" I L 8000 3100 100
F4 "PROG_MISO" I L 8000 2600 100
F5 "PROG_SCK" I L 8000 2800 100
F6 "MCU_RESET" I L 8000 3600 100
F7 "PROG_MOSI" I L 8000 2400 100
F8 "MAGNET" I L 8000 4100 100
F9 "MCU_SensorSpeed" I L 8000 3900 100
$EndSheet
$Sheet
S 4800 2200 1800 1700
U 5C27A832
F0 "USB" 100
F1 "usb.sch" 100
F2 "MCU_TX" I L 4800 3100 100
F3 "MCU_RX" I L 4800 3300 100
F4 "MCU_RESET" I L 4800 3500 100
F5 "USB-" I R 6600 3300 100
F6 "USB+" I R 6600 3100 100
$EndSheet
Wire Wire Line
	4800 3300 3300 3300
Wire Wire Line
	3300 3100 4800 3100
Wire Wire Line
	6600 3100 8000 3100
Wire Wire Line
	6600 3300 8000 3300
Wire Wire Line
	3300 3500 4700 3500
Wire Wire Line
	4700 3500 4700 4200
Wire Wire Line
	4700 4200 6700 4200
Wire Wire Line
	6700 4200 6700 3600
Wire Wire Line
	6700 3600 8000 3600
Connection ~ 4700 3500
Wire Wire Line
	4700 3500 4800 3500
Wire Wire Line
	3800 2400 3300 2400
Wire Wire Line
	3800 2400 3800 1600
Wire Wire Line
	3800 1600 7700 1600
Wire Wire Line
	7700 1600 7700 2400
Wire Wire Line
	7700 2400 8000 2400
Wire Wire Line
	3300 2600 3900 2600
Wire Wire Line
	3900 2600 3900 1700
Wire Wire Line
	3900 1700 7600 1700
Wire Wire Line
	7600 1700 7600 2600
Wire Wire Line
	7600 2600 8000 2600
Wire Wire Line
	8000 2800 7500 2800
Wire Wire Line
	7500 2800 7500 1800
Wire Wire Line
	7500 1800 4000 1800
Wire Wire Line
	4000 2800 3300 2800
Wire Wire Line
	4000 1800 4000 2800
Wire Wire Line
	3300 3800 4600 3800
Wire Wire Line
	4600 3800 4600 4300
Wire Wire Line
	4600 4300 6800 4300
Wire Wire Line
	6800 4300 6800 3900
Wire Wire Line
	6800 3900 8000 3900
Wire Wire Line
	8000 4100 6900 4100
Wire Wire Line
	6900 4100 6900 4400
Wire Wire Line
	6900 4400 4500 4400
Wire Wire Line
	4500 4400 4500 4000
Wire Wire Line
	4500 4000 3300 4000
$EndSCHEMATC
