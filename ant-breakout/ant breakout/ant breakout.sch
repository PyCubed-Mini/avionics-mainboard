EESchema Schematic File Version 4
LIBS:ant breakout-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L balun:Balun U1
U 1 1 5DCBA17C
P 5800 3800
F 0 "U1" H 5800 4125 50  0000 C CNN
F 1 "Balun" H 5800 4034 50  0000 C CNN
F 2 "Documents:Balun" H 5600 4200 50  0001 C CNN
F 3 "" H 5600 4200 50  0001 C CNN
	1    5800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3850 5300 3850
Wire Wire Line
	5450 3700 4850 3700
Text GLabel 6150 3700 2    50   Input ~ 0
OUT1
Text GLabel 6150 3850 2    50   Input ~ 0
OUT2
$Comp
L power:GND #PWR0101
U 1 1 5DCC73DD
P 5300 3850
F 0 "#PWR0101" H 5300 3600 50  0001 C CNN
F 1 "GND" H 5305 3677 50  0000 C CNN
F 2 "" H 5300 3850 50  0001 C CNN
F 3 "" H 5300 3850 50  0001 C CNN
	1    5300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3700 4850 3550
Wire Wire Line
	4850 3550 4450 3550
$Comp
L power:GND #PWR0102
U 1 1 5DCC7927
P 4650 3900
F 0 "#PWR0102" H 4650 3650 50  0001 C CNN
F 1 "GND" H 4655 3727 50  0000 C CNN
F 2 "" H 4650 3900 50  0001 C CNN
F 3 "" H 4650 3900 50  0001 C CNN
	1    4650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3550 4450 3700
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5DCC15B4
P 4650 3700
F 0 "J1" H 4750 3675 50  0000 L CNN
F 1 "Conn_Coaxial" H 4750 3584 50  0000 L CNN
F 2 "SMA-J-P-H-RA-TH1:SAMTEC_SMA-J-P-H-RA-TH1" H 4650 3700 50  0001 C CNN
F 3 " ~" H 4650 3700 50  0001 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_2Pole TP1
U 1 1 5DCD309B
P 6800 3750
F 0 "TP1" V 6754 3808 50  0000 L CNN
F 1 "TestPoint_2Pole" V 6845 3808 50  0000 L CNN
F 2 "Documents:exposed pad" H 6800 3750 50  0001 C CNN
F 3 "~" H 6800 3750 50  0001 C CNN
	1    6800 3750
	0    1    1    0   
$EndComp
Text GLabel 6800 3550 1    50   Input ~ 0
OUT1
Text GLabel 6800 3950 3    50   Input ~ 0
OUT2
$EndSCHEMATC
