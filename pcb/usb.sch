EESchema Schematic File Version 4
LIBS:wirbelstrombremse_regler-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L kicad_joelvonrotz_IC:FT232RL-REEL U3
U 1 1 5C2819CF
P 4900 1900
F 0 "U3" H 5300 2065 50  0000 C CNN
F 1 "FT232RL-REEL" H 5300 1974 50  0000 C CNN
F 2 "IC:SSOP-28" H 3900 3200 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/2007793.pdf" H 3900 3600 50  0001 L TNN
F 4 "FT232RL-REEL" H 3900 3300 50  0001 L TNN "ValueSymbol"
F 5 "768-1007-1-ND" H 3900 3400 50  0001 L TNN "DigikeyNumber"
F 6 "895-FT232RL" H 3900 3500 50  0001 L TNN "MouserNumber"
F 7 "1146032" H 3900 3100 50  0001 L TNN "FarnellNumber"
	1    4900 1900
	1    0    0    -1  
$EndComp
Text Label 6300 2100 2    50   ~ 0
RX
Text Label 6300 2000 2    50   ~ 0
TX
Text HLabel 6400 2000 2    50   Input ~ 10
MCU_TX
Wire Wire Line
	5900 2000 6400 2000
Wire Wire Line
	5900 2100 6400 2100
Text HLabel 6400 2100 2    50   Input ~ 10
MCU_RX
NoConn ~ 5900 2400
Text HLabel 6400 2600 2    50   Input ~ 10
MCU_RESET
Wire Wire Line
	6400 2600 5900 2600
NoConn ~ 5900 2300
NoConn ~ 5900 2700
NoConn ~ 4700 2300
NoConn ~ 4700 2400
NoConn ~ 4700 3200
NoConn ~ 4700 3300
NoConn ~ 4700 2700
NoConn ~ 4700 2600
$Comp
L kicad_joelvonrotz_passive:CAP_100nF_0603 C?
U 1 1 5C28FC64
P 5000 4400
AR Path="/5C28FC64" Ref="C?"  Part="1" 
AR Path="/5C22DAA4/5C28FC64" Ref="C?"  Part="1" 
AR Path="/5C27A832/5C28FC64" Ref="C13"  Part="1" 
F 0 "C13" V 5012 4528 50  0000 L CNN
F 1 "CAP_100nF_0603" H 4000 5265 50  0001 L TNN
F 2 "PASSIVES:CAP_0603" H 4000 6000 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/1958469.pdf" H 4000 6100 50  0001 L TNN
F 4 "885012206020" H 4000 5800 50  0001 L TNN "ValueSymbol"
F 5 "732-7939-1-ND" H 4000 5400 50  0001 L TNN "DigikeyNumber"
F 6 "710-885012206020" H 4000 5500 50  0001 L TNN "MouserNumber"
F 7 "2495168" H 4000 5600 50  0001 L TNN "FarnellNumber"
F 8 "100nF" V 5095 4528 39  0000 L CNN "resistance"
	1    5000 4400
	0    1    1    0   
$EndComp
$Comp
L kicad_joelvonrotz_passive:CAP_100nF_0603 C?
U 1 1 5C28FC6F
P 5600 4400
AR Path="/5C28FC6F" Ref="C?"  Part="1" 
AR Path="/5C22DAA4/5C28FC6F" Ref="C?"  Part="1" 
AR Path="/5C27A832/5C28FC6F" Ref="C14"  Part="1" 
F 0 "C14" V 5612 4528 50  0000 L CNN
F 1 "CAP_100nF_0603" H 4600 5265 50  0001 L TNN
F 2 "PASSIVES:CAP_0603" H 4600 6000 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/1958469.pdf" H 4600 6100 50  0001 L TNN
F 4 "885012206020" H 4600 5800 50  0001 L TNN "ValueSymbol"
F 5 "732-7939-1-ND" H 4600 5400 50  0001 L TNN "DigikeyNumber"
F 6 "710-885012206020" H 4600 5500 50  0001 L TNN "MouserNumber"
F 7 "2495168" H 4600 5600 50  0001 L TNN "FarnellNumber"
F 8 "100nF" V 5695 4528 39  0000 L CNN "resistance"
	1    5600 4400
	0    1    1    0   
$EndComp
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C28FC75
P 5000 4600
AR Path="/5C28FC75" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C28FC75" Ref="#PWR?"  Part="1" 
AR Path="/5C27A832/5C28FC75" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 5200 4700 50  0001 C CNN
F 1 "GND" H 4996 4425 50  0000 C CNN
F 2 "" H 5000 4800 50  0001 C CNN
F 3 "" H 5000 4800 50  0001 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C28FC7B
P 5600 4600
AR Path="/5C28FC7B" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C28FC7B" Ref="#PWR?"  Part="1" 
AR Path="/5C27A832/5C28FC7B" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 5800 4700 50  0001 C CNN
F 1 "GND" H 5596 4425 50  0000 C CNN
F 2 "" H 5600 4800 50  0001 C CNN
F 3 "" H 5600 4800 50  0001 C CNN
	1    5600 4600
	1    0    0    -1  
$EndComp
$Comp
L kicad_joelvonrotz_power:+5V #PWR?
U 1 1 5C28FC81
P 5300 4200
AR Path="/5C28FC81" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C28FC81" Ref="#PWR?"  Part="1" 
AR Path="/5C27A832/5C28FC81" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 5300 4370 50  0001 C CNN
F 1 "+5V" H 5280 4373 50  0000 C CNN
F 2 "" H 5300 4400 50  0001 C CNN
F 3 "" H 5300 4400 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4200 5000 4300
Wire Wire Line
	5000 4200 5300 4200
Wire Wire Line
	5600 4300 5600 4200
Wire Wire Line
	5600 4200 5300 4200
Connection ~ 5300 4200
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C2918E7
P 6000 3900
AR Path="/5C2918E7" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C2918E7" Ref="#PWR?"  Part="1" 
AR Path="/5C27A832/5C2918E7" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 6200 4000 50  0001 C CNN
F 1 "GND" H 5996 3725 50  0000 C CNN
F 2 "" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 4100 50  0001 C CNN
	1    6000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3900 6000 3800
Wire Wire Line
	6000 3500 5900 3500
Wire Wire Line
	5900 3600 6000 3600
Connection ~ 6000 3600
Wire Wire Line
	6000 3600 6000 3500
Wire Wire Line
	6000 3700 5900 3700
Connection ~ 6000 3700
Wire Wire Line
	6000 3700 6000 3600
Wire Wire Line
	5900 3800 6000 3800
Connection ~ 6000 3800
Wire Wire Line
	6000 3800 6000 3700
NoConn ~ 5900 2900
NoConn ~ 5900 3000
NoConn ~ 5900 3100
NoConn ~ 5900 3200
NoConn ~ 5900 3300
Text Label 4300 2000 0    50   ~ 0
USB+
Text Label 4300 2100 0    50   ~ 0
USB-
Text HLabel 4200 2100 0    50   Input ~ 10
USB-
Wire Wire Line
	4700 2100 4200 2100
Wire Wire Line
	4700 2000 4200 2000
Text HLabel 4200 2000 0    50   Input ~ 10
USB+
$Comp
L kicad_joelvonrotz_passive:CAP_100nF_0603 C?
U 1 1 5C29617A
P 4200 3700
AR Path="/5C29617A" Ref="C?"  Part="1" 
AR Path="/5C22DAA4/5C29617A" Ref="C?"  Part="1" 
AR Path="/5C27A832/5C29617A" Ref="C12"  Part="1" 
F 0 "C12" V 4212 3828 50  0000 L CNN
F 1 "CAP_100nF_0603" H 3200 4565 50  0001 L TNN
F 2 "PASSIVES:CAP_0603" H 3200 5300 50  0001 L TNN
F 3 "https://www.farnell.com/datasheets/1958469.pdf" H 3200 5400 50  0001 L TNN
F 4 "885012206020" H 3200 5100 50  0001 L TNN "ValueSymbol"
F 5 "732-7939-1-ND" H 3200 4700 50  0001 L TNN "DigikeyNumber"
F 6 "710-885012206020" H 3200 4800 50  0001 L TNN "MouserNumber"
F 7 "2495168" H 3200 4900 50  0001 L TNN "FarnellNumber"
F 8 "100nF" V 4295 3828 39  0000 L CNN "resistance"
	1    4200 3700
	0    1    1    0   
$EndComp
$Comp
L kicad_joelvonrotz_power:+5V #PWR?
U 1 1 5C296AAC
P 4600 3400
AR Path="/5C296AAC" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C296AAC" Ref="#PWR?"  Part="1" 
AR Path="/5C27A832/5C296AAC" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 4600 3570 50  0001 C CNN
F 1 "+5V" H 4580 3573 50  0000 C CNN
F 2 "" H 4600 3600 50  0001 C CNN
F 3 "" H 4600 3600 50  0001 C CNN
	1    4600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3400 4600 3700
Wire Wire Line
	4600 3700 4700 3700
Wire Wire Line
	4700 3800 4600 3800
Wire Wire Line
	4600 3800 4600 3700
Connection ~ 4600 3700
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C2979D5
P 4200 3900
AR Path="/5C2979D5" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C2979D5" Ref="#PWR?"  Part="1" 
AR Path="/5C27A832/5C2979D5" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 4400 4000 50  0001 C CNN
F 1 "GND" H 4196 3725 50  0000 C CNN
F 2 "" H 4200 4100 50  0001 C CNN
F 3 "" H 4200 4100 50  0001 C CNN
	1    4200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3600 4200 3500
Wire Wire Line
	4200 3500 4700 3500
$Comp
L kicad_joelvonrotz_power:GND #PWR?
U 1 1 5C29AD8B
P 4200 3100
AR Path="/5C29AD8B" Ref="#PWR?"  Part="1" 
AR Path="/5C22DAA4/5C29AD8B" Ref="#PWR?"  Part="1" 
AR Path="/5C27A832/5C29AD8B" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 4400 3200 50  0001 C CNN
F 1 "GND" H 4196 2925 50  0000 C CNN
F 2 "" H 4200 3300 50  0001 C CNN
F 3 "" H 4200 3300 50  0001 C CNN
	1    4200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3100 4200 3000
Wire Wire Line
	4200 3000 4700 3000
Text HLabel 4200 2900 0    50   Input ~ 10
MCU_RESET
Wire Wire Line
	4200 2900 4700 2900
$EndSCHEMATC
