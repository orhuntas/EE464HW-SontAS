EESchema Schematic File Version 4
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
L Device:Transformer_1P_2S T1
U 1 1 5ED381F1
P 5650 3100
F 0 "T1" H 5650 3678 50  0000 C CNN
F 1 "Transformer_1P_2S" H 5650 3587 50  0000 C CNN
F 2 "Transformer_THT:Transformer_CHK_EI30-2VA_2xSec" H 5650 3100 50  0001 C CNN
F 3 "~" H 5650 3100 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+48V #PWR0101
U 1 1 5ED3996D
P 2550 3400
F 0 "#PWR0101" H 2550 3250 50  0001 C CNN
F 1 "+48V" H 2565 3573 50  0000 C CNN
F 2 "" H 2550 3400 50  0001 C CNN
F 3 "" H 2550 3400 50  0001 C CNN
	1    2550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5ED399AD
P 2550 3500
F 0 "#PWR0102" H 2550 3250 50  0001 C CNN
F 1 "GND" H 2555 3327 50  0000 C CNN
F 2 "" H 2550 3500 50  0001 C CNN
F 3 "" H 2550 3500 50  0001 C CNN
	1    2550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3400 2650 3400
Wire Wire Line
	2550 3500 2650 3500
Text Label 2550 3400 2    50   ~ 0
Vin
Text Label 2550 3500 2    50   ~ 0
GND
Text Label 2650 2750 2    50   ~ 0
Vout+
Text Label 2650 2850 2    50   ~ 0
Vout-
$Comp
L pspice:MNMOS M1
U 1 1 5ED3ADB9
P 5050 4400
F 0 "M1" H 5338 4446 50  0000 L CNN
F 1 "MNMOS" H 5338 4355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3P-3_Vertical" H 5025 4400 50  0001 C CNN
F 3 "" H 5025 4400 50  0001 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4200 5150 3300
Connection ~ 5150 3300
Wire Wire Line
	5150 3300 5250 3300
$Comp
L Device:R RCS1
U 1 1 5ED3B025
P 5150 4900
F 0 "RCS1" H 5220 4946 50  0000 L CNN
F 1 "R" H 5220 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5080 4900 50  0001 C CNN
F 3 "~" H 5150 4900 50  0001 C CNN
	1    5150 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R RLC1
U 1 1 5ED3B091
P 4850 4750
F 0 "RLC1" V 4643 4750 50  0000 C CNN
F 1 "R" V 4734 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4780 4750 50  0001 C CNN
F 3 "~" H 4850 4750 50  0001 C CNN
	1    4850 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4750 5150 4750
Wire Wire Line
	5150 4600 5150 4750
Connection ~ 5150 4750
Wire Wire Line
	5250 4600 5150 4600
Connection ~ 5150 4600
Wire Wire Line
	5150 5050 5150 5150
Text Label 5150 5150 2    50   ~ 0
GND
$Comp
L Device:C Cvdd1
U 1 1 5ED3B6B7
P 3850 4150
F 0 "Cvdd1" H 3735 4104 50  0000 R CNN
F 1 "C" H 3735 4195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3888 4000 50  0001 C CNN
F 3 "~" H 3850 4150 50  0001 C CNN
	1    3850 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 4000 3850 3950
Wire Wire Line
	6050 3200 6200 3200
Wire Wire Line
	6200 3200 6200 3750
Wire Wire Line
	2100 3750 2100 4300
Wire Wire Line
	2100 4300 2300 4300
Wire Wire Line
	2100 3750 6200 3750
$Comp
L Device:R Rvdd1
U 1 1 5ED3D8F2
P 3000 4300
F 0 "Rvdd1" V 2793 4300 50  0000 C CNN
F 1 "R" V 2884 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4300
	0    1    1    0   
$EndComp
$Comp
L Isolator:SFH617A-1 U1
U 1 1 5ED3DD13
P 2850 4750
F 0 "U1" H 2850 5075 50  0000 C CNN
F 1 "SFH617A-1" H 2850 4984 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2650 4550 50  0001 L CIN
F 3 "http://www.vishay.com/docs/83740/sfh617a.pdf" H 2850 4750 50  0001 L CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4300 3150 4500
$Comp
L Device:C Cext1
U 1 1 5ED3E32F
P 3350 4700
F 0 "Cext1" H 3465 4746 50  0000 L CNN
F 1 "C" H 3465 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3388 4550 50  0001 C CNN
F 3 "~" H 3350 4700 50  0001 C CNN
	1    3350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4550 3350 4500
Wire Wire Line
	3350 4500 3150 4500
Connection ~ 3150 4500
Wire Wire Line
	3150 4500 3150 4650
Wire Wire Line
	3350 4850 3150 4850
Connection ~ 3150 4850
$Comp
L Device:R RFB3
U 1 1 5ED3F4E6
P 3150 5300
F 0 "RFB3" H 3220 5346 50  0000 L CNN
F 1 "R" H 3220 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3080 5300 50  0001 C CNN
F 3 "~" H 3150 5300 50  0001 C CNN
	1    3150 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R RFB4
U 1 1 5ED3F553
P 3150 5700
F 0 "RFB4" H 3220 5746 50  0000 L CNN
F 1 "R" H 3220 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3080 5700 50  0001 C CNN
F 3 "~" H 3150 5700 50  0001 C CNN
	1    3150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5550 3150 5450
$Comp
L Device:C CFB1
U 1 1 5ED3FABA
P 3550 5250
F 0 "CFB1" H 3665 5296 50  0000 L CNN
F 1 "C" H 3665 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3588 5100 50  0001 C CNN
F 3 "~" H 3550 5250 50  0001 C CNN
	1    3550 5250
	1    0    0    -1  
$EndComp
Connection ~ 3150 5450
Connection ~ 3150 5550
$Comp
L Device:R RVS1
U 1 1 5ED42360
P 2100 4600
F 0 "RVS1" H 2170 4646 50  0000 L CNN
F 1 "R" H 2170 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2030 4600 50  0001 C CNN
F 3 "~" H 2100 4600 50  0001 C CNN
	1    2100 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R RVS2
U 1 1 5ED423DC
P 2100 5100
F 0 "RVS2" H 2170 5146 50  0000 L CNN
F 1 "R" H 2170 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2030 5100 50  0001 C CNN
F 3 "~" H 2100 5100 50  0001 C CNN
	1    2100 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4450 2100 4300
Connection ~ 2100 4300
Wire Wire Line
	2100 4750 2100 4850
Wire Wire Line
	2100 5250 2100 5350
Wire Wire Line
	3150 4850 3150 5100
Connection ~ 3150 5100
Wire Wire Line
	3150 5100 3150 5150
Wire Wire Line
	2100 4850 2300 4850
Wire Wire Line
	2300 4850 2300 4950
Wire Wire Line
	2300 4950 3850 4950
Connection ~ 2100 4850
Wire Wire Line
	2100 4850 2100 4950
Wire Wire Line
	6200 2700 6050 2700
Text Label 7850 2700 0    50   ~ 0
Vout+
Text Label 7850 3000 0    50   ~ 0
Vout-
$Comp
L Device:R RFB1
U 1 1 5ED50D48
P 7800 4000
F 0 "RFB1" H 7870 4046 50  0000 L CNN
F 1 "R" H 7870 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 4000 50  0001 C CNN
F 3 "~" H 7800 4000 50  0001 C CNN
	1    7800 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R RFB2
U 1 1 5ED50DA4
P 7800 4650
F 0 "RFB2" H 7870 4696 50  0000 L CNN
F 1 "R" H 7870 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 4650 50  0001 C CNN
F 3 "~" H 7800 4650 50  0001 C CNN
	1    7800 4650
	1    0    0    -1  
$EndComp
Connection ~ 7800 2700
Wire Wire Line
	7800 2700 7850 2700
$Comp
L Device:R RTL1
U 1 1 5ED539F7
P 7250 3400
F 0 "RTL1" H 7320 3446 50  0000 L CNN
F 1 "R" H 7320 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7180 3400 50  0001 C CNN
F 3 "~" H 7250 3400 50  0001 C CNN
	1    7250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3250 7250 3200
Wire Wire Line
	7250 3200 7800 3200
Wire Wire Line
	7800 2700 7800 3200
Connection ~ 7800 3200
$Comp
L Device:R Ropt1
U 1 1 5ED54E9E
P 7250 3850
F 0 "Ropt1" H 7320 3896 50  0000 L CNN
F 1 "R" H 7320 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7180 3850 50  0001 C CNN
F 3 "~" H 7250 3850 50  0001 C CNN
	1    7250 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cz1
U 1 1 5ED55171
P 7500 4250
F 0 "Cz1" H 7615 4296 50  0000 L CNN
F 1 "C" H 7615 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7538 4100 50  0001 C CNN
F 3 "~" H 7500 4250 50  0001 C CNN
	1    7500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4100 7250 4100
Wire Wire Line
	7250 4100 7250 4000
Wire Wire Line
	7500 4400 7800 4400
Wire Wire Line
	7800 4150 7800 4400
Connection ~ 7800 4400
Wire Wire Line
	7800 4400 7800 4500
Wire Wire Line
	7250 4300 7250 4250
Connection ~ 7250 4100
Wire Wire Line
	7350 4400 7500 4400
Connection ~ 7500 4400
Connection ~ 7250 4250
Wire Wire Line
	7250 4250 7250 4100
$Comp
L Device:C Css431
U 1 1 5ED62E97
P 6500 4500
F 0 "Css431" H 6615 4546 50  0000 L CNN
F 1 "C" H 6615 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6538 4350 50  0001 C CNN
F 3 "~" H 6500 4500 50  0001 C CNN
	1    6500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4500 7250 4800
Wire Wire Line
	7250 3700 7250 3550
Text Label 7250 3650 2    50   ~ 0
OPTO+
Text Label 7250 4100 2    50   ~ 0
OPTO-
Text Label 2550 4650 2    50   ~ 0
OPTO+
Text Label 2550 4850 2    50   ~ 0
OPTO-
Connection ~ 4300 2900
Text Label 3700 2850 2    50   ~ 0
Vin
Text Label 4700 5250 3    50   ~ 0
GND
Wire Wire Line
	5050 3300 5150 3300
Wire Wire Line
	4750 3300 4700 3300
Wire Wire Line
	4700 3300 4700 3250
Wire Wire Line
	4700 2950 4700 2900
Connection ~ 4700 2900
Wire Wire Line
	4700 2900 5250 2900
Wire Wire Line
	3150 5100 3550 5100
Wire Wire Line
	3550 5450 3550 5400
Wire Wire Line
	3150 5450 3550 5450
Wire Wire Line
	6500 4250 6500 4350
Wire Wire Line
	6500 4650 6500 4800
Wire Wire Line
	6500 4800 7250 4800
Wire Wire Line
	6500 4250 7250 4250
Wire Wire Line
	3850 4300 3800 4300
Connection ~ 3150 4300
$Comp
L Device:C C1
U 1 1 5ED5C018
P 5900 5300
F 0 "C1" V 5648 5300 50  0000 C CNN
F 1 "C" V 5739 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 5150 50  0001 C CNN
F 3 "~" H 5900 5300 50  0001 C CNN
	1    5900 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 5300 5400 5300
Wire Wire Line
	5400 5300 5400 5550
Wire Wire Line
	6050 5300 6350 5300
Wire Wire Line
	6350 5300 6350 5550
$Comp
L power:GND #PWR0105
U 1 1 5EF27E28
P 5400 5550
F 0 "#PWR0105" H 5400 5300 50  0001 C CNN
F 1 "GND" H 5405 5377 50  0000 C CNN
F 2 "" H 5400 5550 50  0001 C CNN
F 3 "" H 5400 5550 50  0001 C CNN
	1    5400 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EF28699
P 5150 5150
F 0 "#PWR0106" H 5150 4900 50  0001 C CNN
F 1 "GND" H 5155 4977 50  0000 C CNN
F 2 "" H 5150 5150 50  0001 C CNN
F 3 "" H 5150 5150 50  0001 C CNN
	1    5150 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EF29864
P 3150 5850
F 0 "#PWR0108" H 3150 5600 50  0001 C CNN
F 1 "GND" H 3155 5677 50  0000 C CNN
F 2 "" H 3150 5850 50  0001 C CNN
F 3 "" H 3150 5850 50  0001 C CNN
	1    3150 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EF29DF4
P 2100 5350
F 0 "#PWR0109" H 2100 5100 50  0001 C CNN
F 1 "GND" H 2105 5177 50  0000 C CNN
F 2 "" H 2100 5350 50  0001 C CNN
F 3 "" H 2100 5350 50  0001 C CNN
	1    2100 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EF2A1A3
P 3850 3950
F 0 "#PWR0110" H 3850 3700 50  0001 C CNN
F 1 "GND" H 3855 3777 50  0000 C CNN
F 2 "" H 3850 3950 50  0001 C CNN
F 3 "" H 3850 3950 50  0001 C CNN
	1    3850 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 3200 7800 3850
Wire Wire Line
	4850 4400 4800 4400
$Comp
L uccalike:NCP1207B U2
U 1 1 5EFC2470
P 4350 4600
F 0 "U2" H 4350 5067 50  0000 C CNN
F 1 "UCC28740" H 4350 4976 50  0000 C CNN
F 2 "Package_SO:SOIC-8-N7_3.9x4.9mm_P1.27mm" H 4350 5250 50  0001 C CIN
F 3 "http://www.onsemi.com/pub/Collateral/NCP1207B.PDF" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4750 4700 4850
Connection ~ 3800 4300
Wire Wire Line
	3800 4300 3150 4300
Wire Wire Line
	4300 4050 4650 4050
Wire Wire Line
	4650 4050 4650 4400
$Comp
L Device:C Ccs1
U 1 1 5ED746E5
P 4700 5100
F 0 "Ccs1" H 4815 5146 50  0000 L CNN
F 1 "C" H 4815 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4738 4950 50  0001 C CNN
F 3 "~" H 4700 5100 50  0001 C CNN
	1    4700 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5EF2921E
P 4700 5250
F 0 "#PWR0107" H 4700 5000 50  0001 C CNN
F 1 "GND" H 4705 5077 50  0000 C CNN
F 2 "" H 4700 5250 50  0001 C CNN
F 3 "" H 4700 5250 50  0001 C CNN
	1    4700 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5ED782EF
P 4900 3300
F 0 "D1" H 4900 3516 50  0000 C CNN
F 1 "D" H 4900 3425 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 4900 3300 50  0001 C CNN
F 3 "~" H 4900 3300 50  0001 C CNN
	1    4900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2900 4700 2900
$Comp
L Device:D_Zener Dclamp1
U 1 1 5ED77F95
P 4700 3100
F 0 "Dclamp1" V 4746 3021 50  0000 R CNN
F 1 "D_Zener" V 4655 3021 50  0000 R CNN
F 2 "Diode_SMD:D_SMB" H 4700 3100 50  0001 C CNN
F 3 "~" H 4700 3100 50  0001 C CNN
	1    4700 3100
	0    -1   -1   0   
$EndComp
$Comp
L Diode:B120-E3 D3
U 1 1 5F048145
P 2450 4300
F 0 "D3" H 2450 4083 50  0000 C CNN
F 1 "B120-E3" H 2450 4174 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 2450 4125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88946/b120.pdf" H 2450 4300 50  0001 C CNN
	1    2450 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 4300 2850 4300
Wire Wire Line
	6050 3500 6050 3600
$Comp
L power:GND2 #PWR0103
U 1 1 5F061F14
P 6500 4800
F 0 "#PWR0103" H 6500 4550 50  0001 C CNN
F 1 "GND2" H 6505 4627 50  0000 C CNN
F 2 "" H 6500 4800 50  0001 C CNN
F 3 "" H 6500 4800 50  0001 C CNN
	1    6500 4800
	1    0    0    -1  
$EndComp
Connection ~ 6500 4800
$Comp
L power:GND2 #PWR0104
U 1 1 5F062703
P 7800 4800
F 0 "#PWR0104" H 7800 4550 50  0001 C CNN
F 1 "GND2" H 7805 4627 50  0000 C CNN
F 2 "" H 7800 4800 50  0001 C CNN
F 3 "" H 7800 4800 50  0001 C CNN
	1    7800 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5F0719E7
P 2850 2750
F 0 "J1" H 2930 2742 50  0000 L CNN
F 1 "Conn_01x02" H 2930 2651 50  0000 L CNN
F 2 "Connector:Banana_Jack_2Pin" H 2850 2750 50  0001 C CNN
F 3 "~" H 2850 2750 50  0001 C CNN
	1    2850 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5F074FA8
P 2850 3400
F 0 "J2" H 2930 3392 50  0000 L CNN
F 1 "Conn_01x02" H 2930 3301 50  0000 L CNN
F 2 "Connector:Banana_Jack_2Pin" H 2850 3400 50  0001 C CNN
F 3 "~" H 2850 3400 50  0001 C CNN
	1    2850 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 5F07B627
P 6350 2700
F 0 "D5" H 6350 2917 50  0000 C CNN
F 1 "D_Schottky" H 6350 2826 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-2_Vertical" H 6350 2700 50  0001 C CNN
F 3 "~" H 6350 2700 50  0001 C CNN
	1    6350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2900 3700 2850
$Comp
L Device:CP1 Cout1
U 1 1 5F09AB26
P 7550 2850
F 0 "Cout1" H 7665 2896 50  0000 L CNN
F 1 "CP1" H 7665 2805 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 7550 2850 50  0001 C CNN
F 3 "~" H 7550 2850 50  0001 C CNN
	1    7550 2850
	1    0    0    -1  
$EndComp
Connection ~ 7550 2700
Wire Wire Line
	7550 2700 7800 2700
Connection ~ 7550 3000
Wire Wire Line
	7550 3000 7850 3000
Wire Wire Line
	6500 2700 7550 2700
Wire Wire Line
	6050 3000 6450 3000
Wire Wire Line
	3700 2900 4300 2900
$Comp
L Reference_Voltage:TL431LP U3
U 1 1 5F0B8AA2
P 7250 4400
F 0 "U3" V 7296 4330 50  0000 R CNN
F 1 "TL431LP" V 7205 4330 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7250 4250 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 7250 4400 50  0001 C CIN
	1    7250 4400
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F0D707F
P 6050 3600
F 0 "#PWR0111" H 6050 3350 50  0001 C CNN
F 1 "GND" H 6055 3427 50  0000 C CNN
F 2 "" H 6050 3600 50  0001 C CNN
F 3 "" H 6050 3600 50  0001 C CNN
	1    6050 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0114
U 1 1 5F0D8245
P 6350 5550
F 0 "#PWR0114" H 6350 5300 50  0001 C CNN
F 1 "GND2" H 6355 5377 50  0000 C CNN
F 2 "" H 6350 5550 50  0001 C CNN
F 3 "" H 6350 5550 50  0001 C CNN
	1    6350 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0115
U 1 1 5F0E370D
P 6450 3000
F 0 "#PWR0115" H 6450 2750 50  0001 C CNN
F 1 "GND2" H 6455 2827 50  0000 C CNN
F 2 "" H 6450 3000 50  0001 C CNN
F 3 "" H 6450 3000 50  0001 C CNN
	1    6450 3000
	1    0    0    -1  
$EndComp
Connection ~ 6450 3000
Wire Wire Line
	6450 3000 7550 3000
$Comp
L Mechanical:Heatsink HS1
U 1 1 5F0F61DC
P 1950 1450
F 0 "HS1" H 2092 1571 50  0000 L CNN
F 1 "Heatsink" H 2092 1480 50  0000 L CNN
F 2 "Heatsink:Heatsink_Stonecold_HS-132_32x14mm_2xFixation1.5mm" H 1962 1450 50  0001 C CNN
F 3 "~" H 1962 1450 50  0001 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2900 4300 4050
Wire Wire Line
	4650 4700 4650 4500
Wire Wire Line
	4650 4500 4800 4500
Wire Wire Line
	4800 4500 4800 4400
Wire Wire Line
	4650 4850 4700 4850
Connection ~ 4700 4850
Wire Wire Line
	4700 4850 4700 4950
Wire Wire Line
	4050 4400 3800 4400
Wire Wire Line
	3800 4400 3800 4300
Wire Wire Line
	4050 4550 3850 4550
Wire Wire Line
	3850 4550 3850 4950
Wire Wire Line
	3950 4700 4050 4700
Wire Wire Line
	3150 5550 3950 5550
Wire Wire Line
	3950 5550 3950 4700
$Comp
L power:GND #PWR?
U 1 1 5EF53DE5
P 4050 4850
F 0 "#PWR?" H 4050 4600 50  0001 C CNN
F 1 "GND" H 4055 4677 50  0000 C CNN
F 2 "" H 4050 4850 50  0001 C CNN
F 3 "" H 4050 4850 50  0001 C CNN
	1    4050 4850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
