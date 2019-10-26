EESchema Schematic File Version 4
LIBS:spriteSAMD-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Sprite-2019"
Date ""
Rev "v3a"
Comp "RExLab Stanford University"
Comment1 "Z.Manchester"
Comment2 "M.Holliday"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3950 3000 0    79   ~ 0
LoRa RADIO\n
$Comp
L Device:C_Small C1
U 1 1 5DA4F94A
P 5800 3000
F 0 "C1" H 5700 3100 50  0000 L CNN
F 1 "0.1uF" H 5550 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5800 3000 50  0001 C CNN
F 3 "~" H 5800 3000 50  0001 C CNN
	1    5800 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DA4FC48
P 6200 3000
F 0 "C3" H 6300 3050 50  0000 L CNN
F 1 "10uF" H 6300 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6200 3000 50  0001 C CNN
F 3 "~" H 6200 3000 50  0001 C CNN
	1    6200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2900 6000 2900
Wire Wire Line
	6000 2900 6200 2900
Connection ~ 6000 2900
$Comp
L power:+3V3 #PWR05
U 1 1 5DA85869
P 6000 2800
F 0 "#PWR05" H 6000 2650 50  0001 C CNN
F 1 "+3V3" H 6015 2973 50  0000 C CNN
F 2 "" H 6000 2800 50  0001 C CNN
F 3 "" H 6000 2800 50  0001 C CNN
	1    6000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2800 6000 2900
$Comp
L Device:C_Small C2
U 1 1 5D1C3FDB
P 6000 3000
F 0 "C2" H 6092 3046 50  0000 L CNN
F 1 "1uF" H 6092 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6000 3000 50  0001 C CNN
F 3 "~" H 6000 3000 50  0001 C CNN
	1    6000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3100 6000 3100
Connection ~ 6000 3100
Wire Wire Line
	6000 3100 6200 3100
$Comp
L power:GND #PWR06
U 1 1 5D1CCAB1
P 6000 3100
F 0 "#PWR06" H 6000 2850 50  0001 C CNN
F 1 "GND" H 6005 2927 50  0000 C CNN
F 2 "" H 6000 3100 50  0001 C CNN
F 3 "" H 6000 3100 50  0001 C CNN
	1    6000 3100
	1    0    0    -1  
$EndComp
Text Notes 7600 7200 0    157  ~ 31
Sprite LoRa Generic
$Comp
L RF_Module:RFM95W-915S2 U1
U 1 1 5D188C92
P 4300 3800
F 0 "U1" H 4300 3800 50  0000 C CNN
F 1 "RFM95W-915S2" H 4650 4250 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 1000 5450 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf" H 1000 5450 50  0001 C CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
Text GLabel 3700 3600 0    59   Output ~ 0
MOSI
Text GLabel 3700 3500 0    59   Output ~ 0
SCK
Wire Wire Line
	3700 3600 3800 3600
Wire Wire Line
	3700 3500 3800 3500
Text GLabel 3700 3700 0    59   Input ~ 0
MISO
Wire Wire Line
	3700 3700 3800 3700
Wire Wire Line
	4800 4000 4900 4000
Text GLabel 4900 4000 2    50   BiDi ~ 0
RF_DIO2
$Comp
L power:GND #PWR03
U 1 1 5D1CBF31
P 4300 4400
F 0 "#PWR03" H 4300 4150 50  0001 C CNN
F 1 "GND" H 4305 4227 50  0000 C CNN
F 2 "" H 4300 4400 50  0001 C CNN
F 3 "" H 4300 4400 50  0001 C CNN
	1    4300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4400 4300 4400
Connection ~ 4300 4400
Wire Wire Line
	4300 4400 4400 4400
$Comp
L power:+3V3 #PWR02
U 1 1 5D1D57F0
P 4300 3300
F 0 "#PWR02" H 4300 3150 50  0001 C CNN
F 1 "+3V3" H 4315 3473 50  0000 C CNN
F 2 "" H 4300 3300 50  0001 C CNN
F 3 "" H 4300 3300 50  0001 C CNN
	1    4300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3800 3700 3800
Wire Wire Line
	3800 4000 3700 4000
Text GLabel 3700 3800 0    50   Input ~ 0
RF_CS
Text GLabel 3700 4000 0    50   BiDi ~ 0
RF_RST
Text GLabel 4900 3900 2    50   BiDi ~ 0
RF_DIO3
Text GLabel 4900 3800 2    50   Output ~ 0
RF_BUSY
Text GLabel 4900 4100 2    50   BiDi ~ 0
RF_DIO1
Wire Wire Line
	4900 3900 4800 3900
Wire Wire Line
	4900 4100 4800 4100
Wire Wire Line
	4900 3800 4800 3800
Wire Wire Line
	4800 3500 5050 3500
Text GLabel 4900 4200 2    50   BiDi ~ 0
RF_DIO0
Wire Wire Line
	4900 4200 4800 4200
Wire Wire Line
	5050 3000 5050 3500
Wire Wire Line
	5350 2800 5250 2800
$Comp
L power:GND #PWR04
U 1 1 5D1C2EFC
P 5350 2800
F 0 "#PWR04" H 5350 2550 50  0001 C CNN
F 1 "GND" H 5355 2627 50  0000 C CNN
F 2 "" H 5350 2800 50  0001 C CNN
F 3 "" H 5350 2800 50  0001 C CNN
	1    5350 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5DB557F3
P 5050 2800
F 0 "J2" V 5287 2729 50  0000 C CNN
F 1 "Conn_Coaxial" V 5196 2729 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Samtec_SMA-J-P-H-ST-EM1_EdgeMount" H 5050 2800 50  0001 C CNN
F 3 " ~" H 5050 2800 50  0001 C CNN
	1    5050 2800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 5DB8D0CF
P 2700 3750
F 0 "J1" H 2592 4235 50  0000 C CNN
F 1 "Conn_01x08_Female" H 2592 4144 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2700 3750 50  0001 C CNN
F 3 "~" H 2700 3750 50  0001 C CNN
	1    2700 3750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 5DB91EBA
P 6300 3900
F 0 "J3" H 6328 3876 50  0000 L CNN
F 1 "Conn_01x08_Female" H 6328 3785 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6300 3900 50  0001 C CNN
F 3 "~" H 6300 3900 50  0001 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
Text GLabel 2900 3750 2    59   Output ~ 0
SCK
Text GLabel 2900 3650 2    59   Output ~ 0
MOSI
Text GLabel 2900 3550 2    59   Input ~ 0
MISO
Text GLabel 2900 3850 2    50   Input ~ 0
RF_CS
Text GLabel 2900 3950 2    50   BiDi ~ 0
RF_RST
Text GLabel 4900 3700 2    50   Input ~ 0
P7
Wire Wire Line
	4900 3700 4800 3700
Text GLabel 2900 4050 2    50   Input ~ 0
P7
$Comp
L power:GND #PWR01
U 1 1 5DB9A17D
P 2900 4150
F 0 "#PWR01" H 2900 3900 50  0001 C CNN
F 1 "GND" H 2905 3977 50  0000 C CNN
F 2 "" H 2900 4150 50  0001 C CNN
F 3 "" H 2900 4150 50  0001 C CNN
	1    2900 4150
	0    -1   -1   0   
$EndComp
Text GLabel 6100 3700 0    50   BiDi ~ 0
RF_DIO3
Text GLabel 6100 3800 0    50   Output ~ 0
RF_BUSY
$Comp
L power:+3V3 #PWR07
U 1 1 5DBA07F8
P 6100 4000
F 0 "#PWR07" H 6100 3850 50  0001 C CNN
F 1 "+3V3" H 6115 4173 50  0000 C CNN
F 2 "" H 6100 4000 50  0001 C CNN
F 3 "" H 6100 4000 50  0001 C CNN
	1    6100 4000
	0    -1   -1   0   
$EndComp
Text GLabel 6100 4000 0    50   BiDi ~ 0
RF_DIO0
Text GLabel 6100 4100 0    50   BiDi ~ 0
RF_DIO1
Text GLabel 6100 4200 0    50   BiDi ~ 0
RF_DIO2
$EndSCHEMATC
