EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "555 Timer - Soldering Demo"
Date "2021-08-15"
Rev "A"
Comp "PSU IEEE 2021"
Comment1 "Designed by Ethan Tabler"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Timer:LM555xM U1
U 1 1 6119CD20
P 3850 2800
F 0 "U1" H 3600 3150 50  0000 C CNN
F 1 "LM555xM" H 3850 2800 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4700 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 4700 2400 50  0001 C CNN
	1    3850 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 6119E1AF
P 4400 1800
F 0 "J1" H 4480 1792 50  0000 L CNN
F 1 "BatteryTerminal" H 4480 1701 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 4400 1800 50  0001 C CNN
F 3 "~" H 4400 1800 50  0001 C CNN
	1    4400 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	4200 1800 4150 1800
Wire Wire Line
	4150 1800 4150 1850
$Comp
L power:GND #PWR0101
U 1 1 6119ECAD
P 3850 3300
F 0 "#PWR0101" H 3850 3050 50  0001 C CNN
F 1 "GND" H 3855 3127 50  0000 C CNN
F 2 "" H 3850 3300 50  0001 C CNN
F 3 "" H 3850 3300 50  0001 C CNN
	1    3850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6119F121
P 4150 1850
F 0 "#PWR0102" H 4150 1600 50  0001 C CNN
F 1 "GND" H 4155 1677 50  0000 C CNN
F 2 "" H 4150 1850 50  0001 C CNN
F 3 "" H 4150 1850 50  0001 C CNN
	1    4150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3300 3850 3250
Wire Wire Line
	4200 1700 3850 1700
Wire Wire Line
	3850 1700 3850 2400
Wire Wire Line
	3350 3000 2500 3000
Wire Wire Line
	2500 3000 2500 1700
Wire Wire Line
	2500 1700 3850 1700
Connection ~ 3850 1700
$Comp
L Device:R R1
U 1 1 611ABC52
P 4750 3200
F 0 "R1" H 4680 3154 50  0000 R CNN
F 1 "1k" H 4680 3245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 3200 50  0001 C CNN
F 3 "~" H 4750 3200 50  0001 C CNN
	1    4750 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 2600 3300 2600
Wire Wire Line
	4350 3000 4400 3000
$Comp
L power:GND #PWR0103
U 1 1 611ACC98
P 4750 3750
F 0 "#PWR0103" H 4750 3500 50  0001 C CNN
F 1 "GND" H 4755 3577 50  0000 C CNN
F 2 "" H 4750 3750 50  0001 C CNN
F 3 "" H 4750 3750 50  0001 C CNN
	1    4750 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 611AD330
P 4750 3550
F 0 "C2" H 4842 3596 50  0000 L CNN
F 1 "220nF" H 4842 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4750 3550 50  0001 C CNN
F 3 "~" H 4750 3550 50  0001 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3650 4750 3750
Wire Wire Line
	3350 2800 3250 2800
Wire Wire Line
	3250 2800 3250 3250
Wire Wire Line
	3250 3250 3500 3250
$Comp
L Device:C_Small C1
U 1 1 611ADFE4
P 3600 3250
F 0 "C1" V 3400 3250 50  0000 C CNN
F 1 "100nF" V 3500 3250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3600 3250 50  0001 C CNN
F 3 "~" H 3600 3250 50  0001 C CNN
	1    3600 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 3250 3850 3250
Connection ~ 3850 3250
Wire Wire Line
	3850 3250 3850 3200
Text Notes 4400 2450 0    50   ~ 0
f = 0.722 / R*C
Text Label 5200 2600 2    50   ~ 0
Output
$Comp
L Device:R_Potentiometer RV1
U 1 1 611B0A6F
P 4750 2850
F 0 "RV1" H 4680 2804 50  0000 R CNN
F 1 "10k" H 4680 2895 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Horizontal" H 4750 2850 50  0001 C CNN
F 3 "~" H 4750 2850 50  0001 C CNN
	1    4750 2850
	-1   0    0    1   
$EndComp
Text GLabel 3300 2600 0    50   Input ~ 0
Trigger
Wire Wire Line
	4400 3000 4400 3400
Wire Wire Line
	4400 3400 4750 3400
Wire Wire Line
	4750 3400 4750 3450
Wire Wire Line
	4750 3350 4750 3400
Connection ~ 4750 3400
Wire Wire Line
	4750 3050 4750 3000
Wire Wire Line
	4350 2600 4500 2600
Wire Wire Line
	4600 2850 4500 2850
Wire Wire Line
	4500 2850 4500 2600
Connection ~ 4500 2600
Wire Wire Line
	4500 2600 5350 2600
Text GLabel 4850 3400 2    50   Input ~ 0
Trigger
Wire Wire Line
	4850 3400 4750 3400
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 611B6206
P 5550 2700
F 0 "J2" H 5630 2692 50  0000 L CNN
F 1 "Output" H 5630 2601 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 5550 2700 50  0001 C CNN
F 3 "~" H 5550 2700 50  0001 C CNN
	1    5550 2700
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 611B6B15
P 5300 2850
F 0 "#PWR0104" H 5300 2600 50  0001 C CNN
F 1 "GND" H 5305 2677 50  0000 C CNN
F 2 "" H 5300 2850 50  0001 C CNN
F 3 "" H 5300 2850 50  0001 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2700 5300 2700
Wire Wire Line
	5300 2700 5300 2850
Text Label 3850 1700 0    50   ~ 0
VCC
$EndSCHEMATC
