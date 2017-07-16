EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Quanser_2DSFJ
LIBS:motor_driver-cache
EELAYER 25 0
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
L HIP4081A U3
U 1 1 5928475F
P 2750 6400
F 0 "U3" H 2750 6400 60  0000 C CNN
F 1 "HIP4081A" H 2750 6500 60  0000 C CNN
F 2 "Maplex_Misc:DIP-20_W7.62mm_Socket" H 2750 6400 60  0001 C CNN
F 3 "" H 2750 6400 60  0000 C CNN
	1    2750 6400
	1    0    0    -1  
$EndComp
Text GLabel 8350 4400 0    60   Input ~ 0
VIN_REG
Text Notes 8450 4050 0    60   ~ 12
VOLTAGE REGULATORS
Text GLabel 8950 1350 2    60   Input ~ 0
IN_B
Text GLabel 7950 1350 2    60   Input ~ 0
IN_A
Text Notes 7050 1100 0    60   ~ 12
OPTOCOUPLER SIGNALS
Text Notes 3350 2850 0    60   ~ 12
12v - 35v
Text GLabel 4750 4750 2    60   Input ~ 0
LOAD+
Text GLabel 4750 6400 2    60   Input ~ 0
LOAD-
Text GLabel 1550 4500 0    60   Input ~ 0
VIN_LOAD
Text GLabel 1800 5750 0    55   Input ~ 0
IN_A
Text GLabel 1800 5650 0    55   Input ~ 0
IN_B
Text GLabel 4450 5850 0    60   Input ~ 0
V+
Text GLabel 4500 4150 0    60   Input ~ 0
V+
$Comp
L CP1 C6
U 1 1 592914D2
P 2750 4850
F 0 "C6" H 2775 4950 50  0000 L CNN
F 1 "C_bootstrap" V 2600 4650 50  0000 L CNN
F 2 "Maplex_Misc:CP_Radial_D6.3mm_P2.50mm" H 2750 4850 50  0001 C CNN
F 3 "" H 2750 4850 50  0000 C CNN
	1    2750 4850
	0    -1   -1   0   
$EndComp
$Comp
L D D3
U 1 1 59291A64
P 2000 5050
F 0 "D3" H 2000 5150 50  0000 C CNN
F 1 "D_bootstrap" H 2000 4950 50  0000 C CNN
F 2 "Maplex_Misc:Diode_P7.6mm_5mm" H 2000 5050 50  0001 C CNN
F 3 "" H 2000 5050 50  0000 C CNN
	1    2000 5050
	0    1    1    0   
$EndComp
$Comp
L CP1 C3
U 1 1 5928EFA1
P 2750 6550
F 0 "C3" H 2775 6650 50  0000 L CNN
F 1 "C_bootstrap" V 2600 6350 50  0000 L CNN
F 2 "Maplex_Misc:CP_Radial_D6.3mm_P2.50mm" H 2750 6550 50  0001 C CNN
F 3 "" H 2750 6550 50  0000 C CNN
	1    2750 6550
	0    -1   -1   0   
$EndComp
$Comp
L D D4
U 1 1 5928F569
P 2050 6850
F 0 "D4" H 2050 6950 50  0000 C CNN
F 1 "D_bootstrap" H 2050 6750 50  0000 C CNN
F 2 "Maplex_Misc:Diode_P7.6mm_5mm" H 2050 6850 50  0001 C CNN
F 3 "" H 2050 6850 50  0000 C CNN
	1    2050 6850
	0    1    1    0   
$EndComp
Text GLabel 1800 5450 0    55   Input ~ 0
DISABLE
Text GLabel 1750 4500 2    60   Input ~ 0
V+
Text Notes 3200 4000 0    60   ~ 12
FULL H-BRIDGE DRIVER
Text Notes 2250 4300 0    60   ~ 0
PWM frequency 1 kHz\nC_bootstrap = 1uF 16V or more\nD_bootstrap = 1N4148 low freq.
$Comp
L CONN_01X03 P2
U 1 1 592B4ED2
P 4300 3050
F 0 "P2" H 4300 3250 50  0000 C CNN
F 1 "PIN_1x3" V 4400 3050 50  0000 C CNN
F 2 "Maplex_Misc:Pin_Header_Straight_1x03_Pitch2.54mm" H 4300 3050 50  0001 C CNN
F 3 "" H 4300 3050 50  0000 C CNN
	1    4300 3050
	1    0    0    1   
$EndComp
Text GLabel 3900 2950 0    60   Input ~ 0
VIN_LOGIC
Text GLabel 3900 3150 0    60   Input ~ 0
VIN_LOAD
Text GLabel 3900 3050 0    60   Input ~ 0
VIN_REG
$Comp
L CP1 C7
U 1 1 592B9B8A
P 5500 6800
F 0 "C7" H 5525 6900 50  0000 L CNN
F 1 "10uFx16v" H 5525 6700 50  0000 L CNN
F 2 "Maplex_Misc:CP_Radial_D6.3mm_P2.50mm" H 5500 6800 50  0001 C CNN
F 3 "" H 5500 6800 50  0000 C CNN
	1    5500 6800
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 592BA7D7
P 6000 6800
F 0 "C10" H 6025 6900 50  0000 L CNN
F 1 "0.1uF" H 6025 6700 50  0000 L CNN
F 2 "Maplex_Misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6038 6650 50  0001 C CNN
F 3 "" H 6000 6800 50  0000 C CNN
	1    6000 6800
	1    0    0    -1  
$EndComp
Text GLabel 5550 4550 0    60   Input ~ 0
V+
$Comp
L CP1 C8
U 1 1 592BAECD
P 5750 4700
F 0 "C8" H 5775 4800 50  0000 L CNN
F 1 "1000uFx100v" H 5775 4600 50  0000 L CNN
F 2 "Maplex_Misc:CP_Radial_D12.5mm_P5.00mm" H 5750 4700 50  0001 C CNN
F 3 "" H 5750 4700 50  0000 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
Text Notes 5200 6400 0    60   ~ 0
Place near of Vdd/Vcc and Vss
Text Notes 5200 4450 0    60   ~ 0
Place near of MOS Bridge (LEFT)
Text GLabel 5550 5600 0    60   Input ~ 0
V+
$Comp
L CP1 C9
U 1 1 592BBF67
P 5750 5750
F 0 "C9" H 5775 5850 50  0000 L CNN
F 1 "1000uFx100v" H 5775 5650 50  0000 L CNN
F 2 "Maplex_Misc:CP_Radial_D12.5mm_P5.00mm" H 5750 5750 50  0001 C CNN
F 3 "" H 5750 5750 50  0000 C CNN
	1    5750 5750
	1    0    0    -1  
$EndComp
Text Notes 5200 5500 0    60   ~ 0
Place near of MOS Bridge (RIGHT)
$Comp
L R R2
U 1 1 592C0195
P 10300 4700
F 0 "R2" V 10380 4700 50  0000 C CNN
F 1 "560" V 10300 4700 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 10230 4700 50  0001 C CNN
F 3 "" H 10300 4700 50  0000 C CNN
	1    10300 4700
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 592C0381
P 10600 4700
F 0 "R3" V 10680 4700 50  0000 C CNN
F 1 "220" V 10600 4700 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 10530 4700 50  0001 C CNN
F 3 "" H 10600 4700 50  0000 C CNN
	1    10600 4700
	-1   0    0    1   
$EndComp
Text Notes 2200 1100 0    60   ~ 12
PIN HEADER INTERFACE
$Comp
L CP1 C11
U 1 1 592E11E2
P 9900 1750
F 0 "C11" H 9925 1850 50  0000 L CNN
F 1 "10uFx16v" H 9925 1650 50  0000 L CNN
F 2 "Maplex_Misc:CP_Radial_D6.3mm_P2.50mm" H 9900 1750 50  0001 C CNN
F 3 "" H 9900 1750 50  0000 C CNN
	1    9900 1750
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 592E11EB
P 10400 1750
F 0 "C12" H 10425 1850 50  0000 L CNN
F 1 "0.1uF" H 10425 1650 50  0000 L CNN
F 2 "Maplex_Misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 10438 1600 50  0001 C CNN
F 3 "" H 10400 1750 50  0000 C CNN
	1    10400 1750
	1    0    0    -1  
$EndComp
Text Notes 9450 1350 0    60   ~ 0
Place near of Vcc and Gnd
$Comp
L C C2
U 1 1 594DED5C
P 8900 5600
F 0 "C2" H 8925 5700 50  0000 L CNN
F 1 "0.33 uF" H 8925 5500 50  0000 L CNN
F 2 "Maplex_Misc:C_Disc_D7.5mm_W2.5mm_P5.00mm" H 8938 5450 50  0001 C CNN
F 3 "" H 8900 5600 50  0000 C CNN
	1    8900 5600
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 594DF50E
P 8900 4600
F 0 "C1" H 8925 4700 50  0000 L CNN
F 1 "0.33 uF" H 8925 4500 50  0000 L CNN
F 2 "Maplex_Misc:C_Disc_D7.5mm_W2.5mm_P5.00mm" H 8938 4450 50  0001 C CNN
F 3 "" H 8900 4600 50  0000 C CNN
	1    8900 4600
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 594DFFDF
P 9800 5600
F 0 "C5" H 9825 5700 50  0000 L CNN
F 1 "0.1 uF" H 9825 5500 50  0000 L CNN
F 2 "Maplex_Misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9838 5450 50  0001 C CNN
F 3 "" H 9800 5600 50  0000 C CNN
	1    9800 5600
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 594E02AC
P 9800 4600
F 0 "C4" H 9825 4700 50  0000 L CNN
F 1 "0.1 uF" H 9825 4500 50  0000 L CNN
F 2 "Maplex_Misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9838 4450 50  0001 C CNN
F 3 "" H 9800 4600 50  0000 C CNN
	1    9800 4600
	1    0    0    -1  
$EndComp
Text GLabel 1800 2400 0    60   Input ~ 0
GND_EXT
$Comp
L 4N25 U4
U 1 1 594E76D0
P 6450 1650
F 0 "U4" H 6250 1850 50  0000 L CNN
F 1 "4N25" H 6450 1850 50  0000 L CNN
F 2 "Maplex_Misc:DIP-6_W7.62mm_Socket" H 6250 1450 50  0001 L CIN
F 3 "" H 6450 1650 50  0000 L CNN
	1    6450 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 594EF28F
P 9900 5400
F 0 "#PWR01" H 9900 5250 50  0001 C CNN
F 1 "+5V" H 9900 5540 50  0000 C CNN
F 2 "" H 9900 5400 50  0000 C CNN
F 3 "" H 9900 5400 50  0000 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 594EFAB6
P 9900 4400
F 0 "#PWR02" H 9900 4250 50  0001 C CNN
F 1 "+12V" H 9900 4540 50  0000 C CNN
F 2 "" H 9900 4400 50  0000 C CNN
F 3 "" H 9900 4400 50  0000 C CNN
	1    9900 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 594F04A7
P 9350 4800
F 0 "#PWR03" H 9350 4550 50  0001 C CNN
F 1 "GND" H 9350 4650 50  0000 C CNN
F 2 "" H 9350 4800 50  0000 C CNN
F 3 "" H 9350 4800 50  0000 C CNN
	1    9350 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 594F0C8D
P 9350 5800
F 0 "#PWR04" H 9350 5550 50  0001 C CNN
F 1 "GND" H 9350 5650 50  0000 C CNN
F 2 "" H 9350 5800 50  0000 C CNN
F 3 "" H 9350 5800 50  0000 C CNN
	1    9350 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 594F1EEE
P 10150 2000
F 0 "#PWR05" H 10150 1750 50  0001 C CNN
F 1 "GND" H 10150 1850 50  0000 C CNN
F 2 "" H 10150 2000 50  0000 C CNN
F 3 "" H 10150 2000 50  0000 C CNN
	1    10150 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 594F1CD1
P 10150 1550
F 0 "#PWR06" H 10150 1400 50  0001 C CNN
F 1 "+5V" H 10150 1690 50  0000 C CNN
F 2 "" H 10150 1550 50  0000 C CNN
F 3 "" H 10150 1550 50  0000 C CNN
	1    10150 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 594F3152
P 5750 7050
F 0 "#PWR07" H 5750 6800 50  0001 C CNN
F 1 "GND" H 5750 6900 50  0000 C CNN
F 2 "" H 5750 7050 50  0000 C CNN
F 3 "" H 5750 7050 50  0000 C CNN
	1    5750 7050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 594F387F
P 5750 6600
F 0 "#PWR08" H 5750 6450 50  0001 C CNN
F 1 "+12V" H 5750 6740 50  0000 C CNN
F 2 "" H 5750 6600 50  0000 C CNN
F 3 "" H 5750 6600 50  0000 C CNN
	1    5750 6600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR09
U 1 1 594F41DC
P 1750 5300
F 0 "#PWR09" H 1750 5150 50  0001 C CNN
F 1 "+12V" H 1750 5440 50  0000 C CNN
F 2 "" H 1750 5300 50  0000 C CNN
F 3 "" H 1750 5300 50  0000 C CNN
	1    1750 5300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR010
U 1 1 594F46CA
P 1800 7000
F 0 "#PWR010" H 1800 6850 50  0001 C CNN
F 1 "+12V" H 1800 7140 50  0000 C CNN
F 2 "" H 1800 7000 50  0000 C CNN
F 3 "" H 1800 7000 50  0000 C CNN
	1    1800 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 594F49D7
P 4600 7250
F 0 "#PWR011" H 4600 7000 50  0001 C CNN
F 1 "GND" H 4600 7100 50  0000 C CNN
F 2 "" H 4600 7250 50  0000 C CNN
F 3 "" H 4600 7250 50  0000 C CNN
	1    4600 7250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 594F4CBA
P 4600 5600
F 0 "#PWR012" H 4600 5350 50  0001 C CNN
F 1 "GND" H 4600 5450 50  0000 C CNN
F 2 "" H 4600 5600 50  0000 C CNN
F 3 "" H 4600 5600 50  0000 C CNN
	1    4600 5600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR013
U 1 1 594F4DC1
P 3350 5750
F 0 "#PWR013" H 3350 5600 50  0001 C CNN
F 1 "+12V" H 3350 5890 50  0000 C CNN
F 2 "" H 3350 5750 50  0000 C CNN
F 3 "" H 3350 5750 50  0000 C CNN
	1    3350 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 594F51F6
P 1850 6550
F 0 "#PWR014" H 1850 6300 50  0001 C CNN
F 1 "GND" H 1850 6400 50  0000 C CNN
F 2 "" H 1850 6550 50  0000 C CNN
F 3 "" H 1850 6550 50  0000 C CNN
	1    1850 6550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG015
U 1 1 594F564D
P 1650 4450
F 0 "#FLG015" H 1650 4545 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 4630 50  0000 C CNN
F 2 "" H 1650 4450 50  0000 C CNN
F 3 "" H 1650 4450 50  0000 C CNN
	1    1650 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 594F5C58
P 5750 6000
F 0 "#PWR016" H 5750 5750 50  0001 C CNN
F 1 "GND" H 5750 5850 50  0000 C CNN
F 2 "" H 5750 6000 50  0000 C CNN
F 3 "" H 5750 6000 50  0000 C CNN
	1    5750 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 594F5CCF
P 5750 4950
F 0 "#PWR017" H 5750 4700 50  0001 C CNN
F 1 "GND" H 5750 4800 50  0000 C CNN
F 2 "" H 5750 4950 50  0000 C CNN
F 3 "" H 5750 4950 50  0000 C CNN
	1    5750 4950
	1    0    0    -1  
$EndComp
$Comp
L 4N25 U5
U 1 1 594F708A
P 6450 2750
F 0 "U5" H 6250 2950 50  0000 L CNN
F 1 "4N25" H 6450 2950 50  0000 L CNN
F 2 "Maplex_Misc:DIP-6_W7.62mm_Socket" H 6250 2550 50  0001 L CIN
F 3 "" H 6450 2750 50  0000 L CNN
	1    6450 2750
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U6
U 2 1 594F719E
P 8400 1650
F 0 "U6" H 8550 1750 50  0000 C CNN
F 1 "74HC14" H 8600 1550 50  0000 C CNN
F 2 "Maplex_Misc:DIP-14_W7.62mm_Socket" H 8400 1650 50  0001 C CNN
F 3 "" H 8400 1650 50  0000 C CNN
	2    8400 1650
	1    0    0    -1  
$EndComp
Text GLabel 5650 2650 0    60   Input ~ 0
ENABLE
$Comp
L R R4
U 1 1 594F79B5
P 5900 2650
F 0 "R4" V 5980 2650 50  0000 C CNN
F 1 "220" V 5900 2650 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 5830 2650 50  0001 C CNN
F 3 "" H 5900 2650 50  0000 C CNN
	1    5900 2650
	0    1    1    0   
$EndComp
Text GLabel 5650 2850 0    60   Input ~ 0
GND_EXT
Text GLabel 5650 1550 0    60   Input ~ 0
PWM
$Comp
L R R1
U 1 1 594F89E7
P 5900 1550
F 0 "R1" V 5980 1550 50  0000 C CNN
F 1 "220" V 5900 1550 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 5830 1550 50  0001 C CNN
F 3 "" H 5900 1550 50  0000 C CNN
	1    5900 1550
	0    1    1    0   
$EndComp
Text GLabel 5650 1750 0    60   Input ~ 0
GND_EXT
NoConn ~ 6750 1550
NoConn ~ 6750 2650
$Comp
L +5V #PWR018
U 1 1 594F97D8
P 6850 1250
F 0 "#PWR018" H 6850 1100 50  0001 C CNN
F 1 "+5V" H 6850 1390 50  0000 C CNN
F 2 "" H 6850 1250 50  0000 C CNN
F 3 "" H 6850 1250 50  0000 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 594F9C02
P 6850 1450
F 0 "R7" V 6930 1450 50  0000 C CNN
F 1 "10k" V 6850 1450 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 6780 1450 50  0001 C CNN
F 3 "" H 6850 1450 50  0000 C CNN
	1    6850 1450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR019
U 1 1 594FA156
P 6800 1800
F 0 "#PWR019" H 6800 1550 50  0001 C CNN
F 1 "GND" H 6800 1650 50  0000 C CNN
F 2 "" H 6800 1800 50  0000 C CNN
F 3 "" H 6800 1800 50  0000 C CNN
	1    6800 1800
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U6
U 4 1 594FB1D2
P 7400 2750
F 0 "U6" H 7550 2850 50  0000 C CNN
F 1 "74HC14" H 7600 2650 50  0000 C CNN
F 2 "Maplex_Misc:DIP-14_W7.62mm_Socket" H 7400 2750 50  0001 C CNN
F 3 "" H 7400 2750 50  0000 C CNN
	4    7400 2750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 594FB79F
P 6850 2350
F 0 "#PWR020" H 6850 2200 50  0001 C CNN
F 1 "+5V" H 6850 2490 50  0000 C CNN
F 2 "" H 6850 2350 50  0000 C CNN
F 3 "" H 6850 2350 50  0000 C CNN
	1    6850 2350
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 594FBAAD
P 6850 2550
F 0 "R6" V 6930 2550 50  0000 C CNN
F 1 "10k" V 6850 2550 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 6780 2550 50  0001 C CNN
F 3 "" H 6850 2550 50  0000 C CNN
	1    6850 2550
	-1   0    0    1   
$EndComp
$Comp
L 74HC14 U6
U 1 1 594FC300
P 7400 1650
F 0 "U6" H 7550 1750 50  0000 C CNN
F 1 "74HC14" H 7600 1550 50  0000 C CNN
F 2 "Maplex_Misc:DIP-14_W7.62mm_Socket" H 7400 1650 50  0001 C CNN
F 3 "" H 7400 1650 50  0000 C CNN
	1    7400 1650
	1    0    0    -1  
$EndComp
Text GLabel 9000 2750 2    60   Input ~ 0
DISABLE
$Comp
L 74HC14 U6
U 3 1 594FD630
P 8400 2750
F 0 "U6" H 8550 2850 50  0000 C CNN
F 1 "74HC14" H 8600 2650 50  0000 C CNN
F 2 "Maplex_Misc:DIP-14_W7.62mm_Socket" H 8400 2750 50  0001 C CNN
F 3 "" H 8400 2750 50  0000 C CNN
	3    8400 2750
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 594FDB4A
P 8100 2350
F 0 "R8" V 8180 2350 50  0000 C CNN
F 1 "220" V 8100 2350 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 8030 2350 50  0001 C CNN
F 3 "" H 8100 2350 50  0000 C CNN
	1    8100 2350
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 594FE16B
P 8550 2350
F 0 "D1" H 8550 2450 50  0000 C CNN
F 1 "LED" H 8550 2250 50  0000 C CNN
F 2 "Maplex_Misc:LED_D5.0mm" H 8550 2350 50  0001 C CNN
F 3 "" H 8550 2350 50  0000 C CNN
	1    8550 2350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR021
U 1 1 594FE49A
P 8800 2400
F 0 "#PWR021" H 8800 2150 50  0001 C CNN
F 1 "GND" H 8800 2250 50  0000 C CNN
F 2 "" H 8800 2400 50  0000 C CNN
F 3 "" H 8800 2400 50  0000 C CNN
	1    8800 2400
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5950A3DC
P 10300 5150
F 0 "D2" H 10300 5250 50  0000 C CNN
F 1 "LED" H 10300 5050 50  0000 C CNN
F 2 "Maplex_Misc:LED_D5.0mm" H 10300 5150 50  0001 C CNN
F 3 "" H 10300 5150 50  0000 C CNN
	1    10300 5150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR022
U 1 1 5950A5D5
P 10300 5450
F 0 "#PWR022" H 10300 5200 50  0001 C CNN
F 1 "GND" H 10300 5300 50  0000 C CNN
F 2 "" H 10300 5450 50  0000 C CNN
F 3 "" H 10300 5450 50  0000 C CNN
	1    10300 5450
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR023
U 1 1 5950BD80
P 10300 4450
F 0 "#PWR023" H 10300 4300 50  0001 C CNN
F 1 "+12V" H 10300 4590 50  0000 C CNN
F 2 "" H 10300 4450 50  0000 C CNN
F 3 "" H 10300 4450 50  0000 C CNN
	1    10300 4450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 5950D0D0
P 10600 4450
F 0 "#PWR024" H 10600 4300 50  0001 C CNN
F 1 "+5V" H 10600 4590 50  0000 C CNN
F 2 "" H 10600 4450 50  0000 C CNN
F 3 "" H 10600 4450 50  0000 C CNN
	1    10600 4450
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 5950D16E
P 10600 5150
F 0 "D5" H 10600 5250 50  0000 C CNN
F 1 "LED" H 10600 5050 50  0000 C CNN
F 2 "Maplex_Misc:LED_D5.0mm" H 10600 5150 50  0001 C CNN
F 3 "" H 10600 5150 50  0000 C CNN
	1    10600 5150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 5950D21A
P 10600 5450
F 0 "#PWR025" H 10600 5200 50  0001 C CNN
F 1 "GND" H 10600 5300 50  0000 C CNN
F 2 "" H 10600 5450 50  0000 C CNN
F 3 "" H 10600 5450 50  0000 C CNN
	1    10600 5450
	1    0    0    -1  
$EndComp
Text GLabel 1800 2950 0    50   Input ~ 0
PWM
$Comp
L CONN_01X02 P11
U 1 1 5951950D
P 4300 2300
F 0 "P11" H 4300 2450 50  0000 C CNN
F 1 "TERM_BLK_1" V 4400 2300 50  0000 C CNN
F 2 "Maplex_Misc:TerminalBlock_2Pin_P5.08mm_L9mm" H 4300 2300 50  0001 C CNN
F 3 "" H 4300 2300 50  0000 C CNN
	1    4300 2300
	1    0    0    1   
$EndComp
$Comp
L CONN_01X02 P9
U 1 1 59519513
P 3400 2300
F 0 "P9" H 3400 2450 50  0000 C CNN
F 1 "TERM_BLK_2" V 3500 2300 50  0000 C CNN
F 2 "Maplex_Misc:TerminalBlock_2Pin_P5.08mm_L12mm" H 3400 2300 50  0001 C CNN
F 3 "" H 3400 2300 50  0000 C CNN
	1    3400 2300
	-1   0    0    -1  
$EndComp
Text GLabel 4000 2100 0    60   Input ~ 0
VIN_LOAD
$Comp
L GND #PWR026
U 1 1 5951AC9F
P 4050 2400
F 0 "#PWR026" H 4050 2150 50  0001 C CNN
F 1 "GND" H 4050 2250 50  0000 C CNN
F 2 "" H 4050 2400 50  0000 C CNN
F 3 "" H 4050 2400 50  0000 C CNN
	1    4050 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P10
U 1 1 5951B1E0
P 4300 1500
F 0 "P10" H 4300 1650 50  0000 C CNN
F 1 "TERM_BLK_1" V 4400 1500 50  0000 C CNN
F 2 "Maplex_Misc:TerminalBlock_2Pin_P5.08mm_L9mm" H 4300 1500 50  0001 C CNN
F 3 "" H 4300 1500 50  0000 C CNN
	1    4300 1500
	1    0    0    1   
$EndComp
$Comp
L CONN_01X02 P6
U 1 1 5951B1E6
P 3400 1500
F 0 "P6" H 3400 1650 50  0000 C CNN
F 1 "TERM_BLK_2" V 3500 1500 50  0000 C CNN
F 2 "Maplex_Misc:TerminalBlock_2Pin_P5.08mm_L12mm" H 3400 1500 50  0001 C CNN
F 3 "" H 3400 1500 50  0000 C CNN
	1    3400 1500
	-1   0    0    -1  
$EndComp
Text GLabel 4000 1300 0    60   Input ~ 0
VIN_LOGIC
$Comp
L GND #PWR027
U 1 1 5951B1F2
P 4050 1600
F 0 "#PWR027" H 4050 1350 50  0001 C CNN
F 1 "GND" H 4050 1450 50  0000 C CNN
F 2 "" H 4050 1600 50  0000 C CNN
F 3 "" H 4050 1600 50  0000 C CNN
	1    4050 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 5951D24B
P 2300 1600
F 0 "P4" H 2300 1750 50  0000 C CNN
F 1 "TERM_BLK_1" V 2400 1600 50  0000 C CNN
F 2 "Maplex_Misc:TerminalBlock_2Pin_P5.08mm_L9mm" H 2300 1600 50  0001 C CNN
F 3 "" H 2300 1600 50  0000 C CNN
	1    2300 1600
	1    0    0    1   
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5951D251
P 1400 1600
F 0 "P1" H 1400 1750 50  0000 C CNN
F 1 "TERM_BLK_2" V 1500 1600 50  0000 C CNN
F 2 "Maplex_Misc:TerminalBlock_2Pin_P5.08mm_L12mm" H 1400 1600 50  0001 C CNN
F 3 "" H 1400 1600 50  0000 C CNN
	1    1400 1600
	-1   0    0    -1  
$EndComp
Text GLabel 1750 1400 2    60   Input ~ 0
LOAD+
Text GLabel 1750 1750 2    60   Input ~ 0
LOAD-
$Comp
L +5V #PWR028
U 1 1 59520BC2
P 7350 1550
F 0 "#PWR028" H 7350 1400 50  0001 C CNN
F 1 "+5V" H 7350 1690 50  0000 C CNN
F 2 "" H 7350 1550 50  0000 C CNN
F 3 "" H 7350 1550 50  0000 C CNN
	1    7350 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 59520C99
P 7350 1750
F 0 "#PWR029" H 7350 1500 50  0001 C CNN
F 1 "GND" H 7350 1600 50  0000 C CNN
F 2 "" H 7350 1750 50  0000 C CNN
F 3 "" H 7350 1750 50  0000 C CNN
	1    7350 1750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR030
U 1 1 59520D3D
P 8350 1550
F 0 "#PWR030" H 8350 1400 50  0001 C CNN
F 1 "+5V" H 8350 1690 50  0000 C CNN
F 2 "" H 8350 1550 50  0000 C CNN
F 3 "" H 8350 1550 50  0000 C CNN
	1    8350 1550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR031
U 1 1 59520DE1
P 7350 2650
F 0 "#PWR031" H 7350 2500 50  0001 C CNN
F 1 "+5V" H 7350 2790 50  0000 C CNN
F 2 "" H 7350 2650 50  0000 C CNN
F 3 "" H 7350 2650 50  0000 C CNN
	1    7350 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR032
U 1 1 59520F84
P 8350 2650
F 0 "#PWR032" H 8350 2500 50  0001 C CNN
F 1 "+5V" H 8350 2790 50  0000 C CNN
F 2 "" H 8350 2650 50  0000 C CNN
F 3 "" H 8350 2650 50  0000 C CNN
	1    8350 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 595216FE
P 7350 2850
F 0 "#PWR033" H 7350 2600 50  0001 C CNN
F 1 "GND" H 7350 2700 50  0000 C CNN
F 2 "" H 7350 2850 50  0000 C CNN
F 3 "" H 7350 2850 50  0000 C CNN
	1    7350 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 59521808
P 8350 2850
F 0 "#PWR034" H 8350 2600 50  0001 C CNN
F 1 "GND" H 8350 2700 50  0000 C CNN
F 2 "" H 8350 2850 50  0000 C CNN
F 3 "" H 8350 2850 50  0000 C CNN
	1    8350 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 594F117A
P 8100 5800
F 0 "#PWR035" H 8100 5550 50  0001 C CNN
F 1 "GND" H 8100 5650 50  0000 C CNN
F 2 "" H 8100 5800 50  0000 C CNN
F 3 "" H 8100 5800 50  0000 C CNN
	1    8100 5800
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG036
U 1 1 594F1308
P 8100 5700
F 0 "#FLG036" H 8100 5795 50  0001 C CNN
F 1 "PWR_FLAG" H 8100 5880 50  0000 C CNN
F 2 "" H 8100 5700 50  0000 C CNN
F 3 "" H 8100 5700 50  0000 C CNN
	1    8100 5700
	1    0    0    -1  
$EndComp
Text GLabel 1800 3050 0    50   Input ~ 0
ENABLE
$Comp
L CONN_01X03 P3
U 1 1 5951E312
P 1400 2650
F 0 "P3" H 1400 2850 50  0000 C CNN
F 1 "MOLEX_P3" V 1500 2650 50  0000 C CNN
F 2 "Maplex_Misc:Molex_3Pin_180_TH" H 1400 2650 50  0001 C CNN
F 3 "" H 1400 2650 50  0000 C CNN
	1    1400 2650
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P5
U 1 1 5951EA00
P 2300 2650
F 0 "P5" H 2300 2850 50  0000 C CNN
F 1 "FEMALE_HEADER" V 2400 2650 50  0000 C CNN
F 2 "Maplex_Misc:Pin_Header_Straight_1x03_Pitch2.54mm" H 2300 2650 50  0001 C CNN
F 3 "" H 2300 2650 50  0000 C CNN
	1    2300 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 594FCF50
P 6800 2900
F 0 "#PWR037" H 6800 2650 50  0001 C CNN
F 1 "GND" H 6800 2750 50  0000 C CNN
F 2 "" H 6800 2900 50  0000 C CNN
F 3 "" H 6800 2900 50  0000 C CNN
	1    6800 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 596054DF
P 8350 1750
F 0 "#PWR038" H 8350 1500 50  0001 C CNN
F 1 "GND" H 8350 1600 50  0000 C CNN
F 2 "" H 8350 1750 50  0000 C CNN
F 3 "" H 8350 1750 50  0000 C CNN
	1    8350 1750
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5960790E
P 2750 6850
F 0 "C14" H 2800 7000 50  0000 L CNN
F 1 "0.1uF" V 2900 6750 50  0000 L CNN
F 2 "Maplex_Misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2788 6700 50  0001 C CNN
F 3 "" H 2750 6850 50  0000 C CNN
	1    2750 6850
	0    1    1    0   
$EndComp
$Comp
L C C13
U 1 1 59607DCC
P 2750 4550
F 0 "C13" H 2600 4400 50  0000 L CNN
F 1 "0.1uF" V 2900 4450 50  0000 L CNN
F 2 "Maplex_Misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2788 4400 50  0001 C CNN
F 3 "" H 2750 4550 50  0000 C CNN
	1    2750 4550
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 59608814
P 1650 6300
F 0 "R5" V 1730 6300 50  0000 C CNN
F 1 "100k" V 1650 6300 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 1580 6300 50  0001 C CNN
F 3 "" H 1650 6300 50  0000 C CNN
	1    1650 6300
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5960888D
P 2050 6300
F 0 "R9" V 2130 6300 50  0000 C CNN
F 1 "100k" V 2050 6300 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 1980 6300 50  0001 C CNN
F 3 "" H 2050 6300 50  0000 C CNN
	1    2050 6300
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 596314A1
P 4200 4700
F 0 "R14" V 4280 4700 50  0000 C CNN
F 1 "10k" V 4200 4700 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 4130 4700 50  0001 C CNN
F 3 "" H 4200 4700 50  0000 C CNN
	1    4200 4700
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 596319DC
P 3950 4500
F 0 "R10" V 4030 4500 50  0000 C CNN
F 1 "10" V 3950 4500 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 3880 4500 50  0001 C CNN
F 3 "" H 3950 4500 50  0000 C CNN
	1    3950 4500
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5963419E
P 3950 5150
F 0 "R11" V 4030 5150 50  0000 C CNN
F 1 "10" V 3950 5150 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 3880 5150 50  0001 C CNN
F 3 "" H 3950 5150 50  0000 C CNN
	1    3950 5150
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 59634768
P 4200 5350
F 0 "R15" V 4280 5350 50  0000 C CNN
F 1 "10k" V 4200 5350 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 4130 5350 50  0001 C CNN
F 3 "" H 4200 5350 50  0000 C CNN
	1    4200 5350
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 596319B1
P 3950 6150
F 0 "R12" V 4030 6150 50  0000 C CNN
F 1 "10" V 3950 6150 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 3880 6150 50  0001 C CNN
F 3 "" H 3950 6150 50  0000 C CNN
	1    3950 6150
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 59631D79
P 4200 6350
F 0 "R16" V 4280 6350 50  0000 C CNN
F 1 "10k" V 4200 6350 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 4130 6350 50  0001 C CNN
F 3 "" H 4200 6350 50  0000 C CNN
	1    4200 6350
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 59636E15
P 4200 7000
F 0 "R17" V 4280 7000 50  0000 C CNN
F 1 "10k" V 4200 7000 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 4130 7000 50  0001 C CNN
F 3 "" H 4200 7000 50  0000 C CNN
	1    4200 7000
	1    0    0    -1  
$EndComp
$Comp
L IRF540N Q4
U 1 1 59682EB2
P 4500 6750
F 0 "Q4" H 4750 6825 50  0000 L CNN
F 1 "IRFZ40" H 4750 6750 50  0000 L CNN
F 2 "Maplex_Misc:TO-220_Neutral_Vertical" H 4750 6675 50  0001 L CIN
F 3 "" H 4500 6750 50  0000 L CNN
	1    4500 6750
	1    0    0    -1  
$EndComp
$Comp
L IRF540N Q3
U 1 1 59683B8F
P 4500 6100
F 0 "Q3" H 4750 6175 50  0000 L CNN
F 1 "IRFZ40" H 4750 6100 50  0000 L CNN
F 2 "Maplex_Misc:TO-220_Neutral_Vertical" H 4750 6025 50  0001 L CIN
F 3 "" H 4500 6100 50  0000 L CNN
	1    4500 6100
	1    0    0    -1  
$EndComp
$Comp
L IRF540N Q2
U 1 1 59683E73
P 4500 5100
F 0 "Q2" H 4750 5175 50  0000 L CNN
F 1 "IRFZ40" H 4750 5100 50  0000 L CNN
F 2 "Maplex_Misc:TO-220_Neutral_Vertical" H 4750 5025 50  0001 L CIN
F 3 "" H 4500 5100 50  0000 L CNN
	1    4500 5100
	1    0    0    -1  
$EndComp
$Comp
L IRF540N Q1
U 1 1 5968439B
P 4500 4450
F 0 "Q1" H 4750 4525 50  0000 L CNN
F 1 "IRFZ40" H 4750 4450 50  0000 L CNN
F 2 "Maplex_Misc:TO-220_Neutral_Vertical" H 4750 4375 50  0001 L CIN
F 3 "" H 4500 4450 50  0000 L CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 596884D5
P 3950 6800
F 0 "R13" V 4030 6800 50  0000 C CNN
F 1 "10" V 3950 6800 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 3880 6800 50  0001 C CNN
F 3 "" H 3950 6800 50  0000 C CNN
	1    3950 6800
	0    1    1    0   
$EndComp
$Comp
L LM7805CT U1
U 1 1 5969526E
P 9350 5450
F 0 "U1" H 9150 5650 50  0000 C CNN
F 1 "LM7805CT" H 9350 5650 50  0000 L CNN
F 2 "Maplex_Misc:TO-220_Neutral_Vertical" H 9350 5550 50  0001 C CIN
F 3 "" H 9350 5450 50  0000 C CNN
	1    9350 5450
	1    0    0    -1  
$EndComp
$Comp
L LM7812CT U2
U 1 1 59695750
P 9350 4450
F 0 "U2" H 9150 4650 50  0000 C CNN
F 1 "LM7812CT" H 9350 4650 50  0000 L CNN
F 2 "Maplex_Misc:TO-220_Neutral_Vertical" H 9350 4550 50  0001 C CIN
F 3 "" H 9350 4450 50  0000 C CNN
	1    9350 4450
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5969A377
P 3800 6550
F 0 "R20" V 3880 6550 50  0000 C CNN
F 1 "0" V 3800 6550 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 3730 6550 50  0001 C CNN
F 3 "" H 3800 6550 50  0000 C CNN
	1    3800 6550
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 5969B1CE
P 3800 4900
F 0 "R19" V 3880 4900 50  0000 C CNN
F 1 "0" V 3800 4900 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 3730 4900 50  0001 C CNN
F 3 "" H 3800 4900 50  0000 C CNN
	1    3800 4900
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 5969C312
P 1850 6300
F 0 "R18" V 1930 6300 50  0000 C CNN
F 1 "0" V 1850 6300 50  0000 C CNN
F 2 "Maplex_Misc:Resistor_Horizontal_RM10mm_L7mm" V 1780 6300 50  0001 C CNN
F 3 "" H 1850 6300 50  0000 C CNN
	1    1850 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 4900 4600 4900
Wire Wire Line
	3500 4900 3650 4900
Wire Wire Line
	3950 6550 4600 6550
Wire Wire Line
	3400 6550 3650 6550
Wire Notes Line
	6850 7500 6850 3900
Connection ~ 4600 4750
Wire Wire Line
	4600 4750 4750 4750
Connection ~ 4200 4500
Wire Wire Line
	4200 4550 4200 4500
Wire Wire Line
	4100 4500 4300 4500
Wire Wire Line
	3400 4500 3800 4500
Connection ~ 4200 4900
Wire Wire Line
	4200 4850 4200 4900
Wire Wire Line
	3800 5150 3600 5150
Connection ~ 4200 5150
Wire Wire Line
	4200 5200 4200 5150
Wire Wire Line
	4100 5150 4300 5150
Connection ~ 4200 5550
Wire Wire Line
	4200 5500 4200 5550
Wire Wire Line
	3800 6150 3200 6150
Connection ~ 4200 7200
Wire Wire Line
	4200 7150 4200 7200
Connection ~ 4200 6550
Wire Wire Line
	3500 6800 3800 6800
Wire Wire Line
	3500 5950 3500 6800
Wire Wire Line
	3600 5850 3600 7200
Connection ~ 4200 6800
Wire Wire Line
	4200 6800 4200 6850
Wire Wire Line
	4100 6800 4300 6800
Wire Wire Line
	4600 5850 4600 5900
Wire Wire Line
	4450 5850 4600 5850
Connection ~ 4600 7200
Wire Wire Line
	3600 7200 4600 7200
Connection ~ 4600 6400
Wire Wire Line
	4750 6400 4600 6400
Wire Wire Line
	4600 6550 4600 6300
Wire Notes Line
	1000 7500 6850 7500
Wire Wire Line
	4600 6950 4600 7250
Wire Wire Line
	2900 4550 3300 4550
Wire Wire Line
	2200 4550 2600 4550
Wire Wire Line
	3300 6850 2900 6850
Connection ~ 2200 6550
Wire Wire Line
	2200 6850 2600 6850
Wire Wire Line
	2050 6550 2600 6550
Wire Wire Line
	2200 6150 2200 6850
Wire Wire Line
	2300 6150 2200 6150
Wire Wire Line
	3300 6550 2900 6550
Connection ~ 3300 6550
Wire Wire Line
	1800 7000 1800 7100
Wire Wire Line
	2050 7100 2050 7000
Wire Wire Line
	1800 7100 2050 7100
Wire Wire Line
	2050 6700 2050 6550
Wire Wire Line
	3300 6050 3300 6850
Wire Wire Line
	2900 4850 3300 4850
Wire Wire Line
	2000 4850 2600 4850
Wire Wire Line
	3200 5950 3500 5950
Wire Wire Line
	3400 6050 3400 6550
Wire Wire Line
	3200 6050 3400 6050
Wire Wire Line
	4200 6500 4200 6550
Wire Wire Line
	3600 5150 3600 5450
Wire Wire Line
	3600 5450 3200 5450
Wire Wire Line
	3500 4900 3500 5350
Wire Wire Line
	3500 5350 3200 5350
Wire Wire Line
	3400 4500 3400 5250
Wire Wire Line
	3400 5250 3200 5250
Connection ~ 4200 6150
Wire Wire Line
	4200 6200 4200 6150
Wire Wire Line
	4100 6150 4300 6150
Connection ~ 4600 5550
Wire Wire Line
	3200 5550 4600 5550
Wire Wire Line
	2000 4900 2000 4850
Wire Wire Line
	2000 5200 2000 5850
Connection ~ 3300 4850
Connection ~ 2200 4850
Wire Wire Line
	2200 4550 2200 5250
Wire Wire Line
	1650 5950 2300 5950
Wire Wire Line
	7900 2350 7950 2350
Wire Wire Line
	7900 1350 7950 1350
Wire Wire Line
	8900 1350 8950 1350
Wire Wire Line
	6800 1750 6750 1750
Wire Wire Line
	6800 2850 6750 2850
Connection ~ 6850 2750
Wire Wire Line
	6800 2850 6800 2900
Wire Wire Line
	6850 2750 6850 2700
Wire Wire Line
	6850 2350 6850 2400
Connection ~ 6850 1650
Wire Wire Line
	6850 1250 6850 1300
Wire Wire Line
	6850 1650 6850 1600
Connection ~ 1950 2750
Wire Wire Line
	1950 3050 1950 2750
Wire Wire Line
	1800 3050 1950 3050
Wire Wire Line
	1850 2950 1800 2950
Wire Wire Line
	1850 2650 1850 2950
Wire Wire Line
	1600 2750 2100 2750
Wire Notes Line
	4750 950  4750 3500
Wire Wire Line
	8100 5800 8100 5700
Wire Wire Line
	9800 4400 9800 4450
Wire Wire Line
	9800 5450 9800 5400
Wire Wire Line
	8800 2350 8800 2400
Wire Wire Line
	8750 2350 8800 2350
Wire Notes Line
	1000 950  4750 950 
Connection ~ 1650 1550
Wire Wire Line
	1650 1400 1650 1550
Wire Wire Line
	1750 1400 1650 1400
Connection ~ 1650 1650
Wire Wire Line
	1650 1750 1650 1650
Wire Wire Line
	1750 1750 1650 1750
Wire Wire Line
	1600 1550 2100 1550
Wire Wire Line
	1600 1650 2100 1650
Wire Wire Line
	4000 1300 4050 1300
Wire Wire Line
	4000 2100 4050 2100
Connection ~ 4050 1550
Wire Wire Line
	4050 1600 4050 1550
Connection ~ 4050 1450
Wire Wire Line
	4050 1300 4050 1450
Wire Wire Line
	3600 1450 4100 1450
Wire Wire Line
	3600 1550 4100 1550
Connection ~ 4050 2350
Wire Wire Line
	4050 2400 4050 2350
Connection ~ 4050 2250
Wire Wire Line
	4050 2100 4050 2250
Wire Wire Line
	3600 2250 4100 2250
Wire Wire Line
	3600 2350 4100 2350
Wire Wire Line
	1800 2400 1850 2400
Connection ~ 1850 2550
Wire Wire Line
	1850 2400 1850 2550
Connection ~ 1850 2650
Wire Wire Line
	1600 2550 2100 2550
Wire Wire Line
	1600 2650 2100 2650
Wire Notes Line
	6850 3900 1000 3900
Wire Notes Line
	10800 950  10350 950 
Wire Notes Line
	10800 3500 10800 950 
Wire Notes Line
	5050 3500 5050 950 
Wire Notes Line
	10800 6100 10800 3900
Wire Wire Line
	10600 4850 10600 4950
Wire Wire Line
	10600 4450 10600 4550
Wire Wire Line
	10300 4550 10300 4450
Wire Wire Line
	10300 4950 10300 4850
Wire Wire Line
	10600 5450 10600 5350
Wire Wire Line
	10300 5450 10300 5350
Wire Notes Line
	5050 950  10400 950 
Wire Notes Line
	5050 3500 10800 3500
Wire Wire Line
	1650 4500 1650 4450
Wire Notes Line
	7750 6100 7750 3900
Wire Notes Line
	1000 3900 1000 7500
Connection ~ 1650 4500
Wire Wire Line
	1550 4500 1750 4500
Wire Wire Line
	8350 4400 8950 4400
Wire Wire Line
	1800 5450 2300 5450
Wire Wire Line
	9000 2750 8850 2750
Wire Wire Line
	8250 2350 8350 2350
Connection ~ 7900 2750
Wire Wire Line
	7900 2350 7900 2750
Wire Wire Line
	7850 2750 7950 2750
Wire Wire Line
	6750 2750 6950 2750
Wire Wire Line
	8900 1650 8900 1350
Wire Wire Line
	8850 1650 8900 1650
Connection ~ 7900 1650
Wire Wire Line
	7900 1350 7900 1650
Wire Wire Line
	7850 1650 7950 1650
Wire Wire Line
	6800 1800 6800 1750
Wire Wire Line
	6750 1650 6950 1650
Wire Wire Line
	5650 1750 6150 1750
Wire Wire Line
	6050 1550 6150 1550
Wire Wire Line
	5650 1550 5750 1550
Wire Wire Line
	5650 2850 6150 2850
Wire Wire Line
	6050 2650 6150 2650
Wire Wire Line
	5750 2650 5650 2650
Connection ~ 1850 6500
Connection ~ 3250 5750
Wire Wire Line
	1750 5350 1750 5300
Connection ~ 5750 6600
Wire Wire Line
	5500 6600 6000 6600
Connection ~ 5750 7050
Wire Wire Line
	5500 7050 6000 7050
Wire Wire Line
	6000 7050 6000 6950
Wire Wire Line
	6000 6600 6000 6650
Connection ~ 10150 2000
Wire Wire Line
	10400 2000 10400 1900
Wire Wire Line
	9900 2000 10400 2000
Connection ~ 10150 1550
Wire Wire Line
	9900 1550 10400 1550
Wire Wire Line
	10400 1550 10400 1600
Wire Wire Line
	9350 5700 9350 5800
Connection ~ 9350 5800
Wire Wire Line
	8900 5800 9800 5800
Connection ~ 9350 4800
Wire Wire Line
	9350 4800 9350 4700
Wire Wire Line
	8900 4800 9800 4800
Wire Wire Line
	9900 1900 9900 2000
Wire Wire Line
	9900 1550 9900 1600
Wire Notes Line
	1000 3500 1000 950 
Wire Notes Line
	4750 3500 1000 3500
Wire Wire Line
	5750 5600 5550 5600
Wire Wire Line
	5750 5900 5750 6000
Wire Wire Line
	5750 4550 5550 4550
Wire Wire Line
	5750 4850 5750 4950
Wire Wire Line
	5500 6950 5500 7050
Wire Wire Line
	5500 6600 5500 6650
Wire Wire Line
	3900 3150 4100 3150
Wire Wire Line
	3900 3050 4100 3050
Wire Wire Line
	3900 2950 4100 2950
Connection ~ 8500 4400
Wire Wire Line
	8500 5400 8500 4400
Wire Wire Line
	8500 5400 8950 5400
Connection ~ 2000 5350
Wire Wire Line
	1750 5350 2300 5350
Wire Wire Line
	2000 5850 2300 5850
Connection ~ 3300 6050
Wire Wire Line
	1850 5550 2300 5550
Wire Wire Line
	2200 5250 2300 5250
Connection ~ 3300 5350
Wire Wire Line
	3300 4550 3300 5350
Wire Wire Line
	4600 4150 4600 4250
Wire Wire Line
	4500 4150 4600 4150
Wire Wire Line
	3200 5850 3600 5850
Wire Wire Line
	1800 5750 2300 5750
Wire Wire Line
	1800 5650 2300 5650
Wire Wire Line
	4600 5300 4600 5600
Wire Wire Line
	4600 4900 4600 4650
Wire Wire Line
	3200 5750 3350 5750
Wire Wire Line
	3250 5650 3250 5750
Wire Wire Line
	3200 5650 3250 5650
Wire Notes Line
	7750 6100 10800 6100
Wire Notes Line
	7750 3900 10800 3900
Connection ~ 8900 5400
Wire Wire Line
	8900 5450 8900 5400
Wire Wire Line
	8900 5750 8900 5800
Wire Wire Line
	8900 4750 8900 4800
Connection ~ 8900 4400
Wire Wire Line
	8900 4400 8900 4450
Connection ~ 9800 4400
Wire Wire Line
	9800 4800 9800 4750
Connection ~ 9800 5400
Wire Wire Line
	9800 5800 9800 5750
Wire Wire Line
	9750 4400 9900 4400
Wire Wire Line
	9750 5400 9900 5400
Wire Wire Line
	1850 6450 1850 6550
Wire Wire Line
	1650 6500 2050 6500
Wire Wire Line
	1650 6500 1650 6450
Wire Wire Line
	2050 6500 2050 6450
Wire Wire Line
	2050 6150 2050 6050
Wire Wire Line
	2050 6050 2300 6050
Wire Wire Line
	1650 6150 1650 5950
Wire Wire Line
	1850 6150 1850 5550
$EndSCHEMATC
