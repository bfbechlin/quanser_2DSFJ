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
LIBS:arduino_shields
LIBS:galileo_pins-cache
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
Text Notes 8250 3700 0    60   ~ 12
PWM\nMOT_DIS\nSS_C1\nSS_C2\nEN_C1\nEN_C2\nLIMSW_1\nLIMSW_2\nMOSI\nMISO\nSCK
Text Notes 8700 3700 0    60   ~ 12
GPIO_03\nGPIO_04\nGPIO_05\nGPIO_06\nGPIO_07\nGPIO_08\nGPIO_09\nGPIO_10\nGPIO_11\nGPIO_12\nGPIO_13	
Text Notes 8250 2550 0    79   ~ 16
PIN HEADER\n   GALILEO
$Comp
L ARDUINO_SHIELD SHIELD1
U 1 1 592E37EC
P 3400 4750
F 0 "SHIELD1" H 3050 5700 60  0000 C CNN
F 1 "GALILEO_SHIELD" H 3450 3800 60  0000 C CNN
F 2 "" H 3400 4750 60  0000 C CNN
F 3 "" H 3400 4750 60  0000 C CNN
	1    3400 4750
	1    0    0    -1  
$EndComp
Text GLabel 4450 5250 2    60   Input ~ 0
PWM
Text GLabel 4450 5150 2    60   Input ~ 0
MOT_DIS
Text GLabel 4450 5050 2    60   Input ~ 0
SS_C1
Text GLabel 4450 4950 2    60   Input ~ 0
SS_C2
Text GLabel 4450 4850 2    60   Input ~ 0
EN_C1
Text GLabel 4450 4650 2    60   Input ~ 0
EN_C2
Text GLabel 4450 4550 2    60   Input ~ 0
LIMSW_1
Text GLabel 4450 4450 2    60   Input ~ 0
LIMSW_2
Text GLabel 4450 4350 2    60   Input ~ 0
MOSI
Text GLabel 4450 4250 2    60   Input ~ 0
MISO
Text GLabel 4450 4150 2    60   Input ~ 0
SCK
$Comp
L CONN_01X03 P2
U 1 1 592E3FE6
P 2050 2100
F 0 "P2" H 2050 2300 50  0000 C CNN
F 1 "MOLEX_HEADER" V 2150 2100 50  0000 C CNN
F 2 "" H 2050 2100 50  0000 C CNN
F 3 "" H 2050 2100 50  0000 C CNN
	1    2050 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 592E402D
P 2050 1500
F 0 "P1" H 2050 1650 50  0000 C CNN
F 1 "MOLEX_HEADER" V 2150 1500 50  0000 C CNN
F 2 "" H 2050 1500 50  0000 C CNN
F 3 "" H 2050 1500 50  0000 C CNN
	1    2050 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 592E41CE
P 2050 2700
F 0 "P3" H 2050 2850 50  0000 C CNN
F 1 "MOLEX_HEADER" V 2150 2700 50  0000 C CNN
F 2 "" H 2050 2700 50  0000 C CNN
F 3 "" H 2050 2700 50  0000 C CNN
	1    2050 2700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 592E420C
P 3100 1500
F 0 "P5" H 3100 1650 50  0000 C CNN
F 1 "MOLEX_HEADER" V 3200 1500 50  0000 C CNN
F 2 "" H 3100 1500 50  0000 C CNN
F 3 "" H 3100 1500 50  0000 C CNN
	1    3100 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P6
U 1 1 592E42D0
P 4200 1800
F 0 "P6" H 4200 2250 50  0000 C CNN
F 1 "SCSI_16_PIN_CON" V 4200 1800 50  0000 C CNN
F 2 "" H 4200 600 50  0000 C CNN
F 3 "" H 4200 600 50  0000 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
Text GLabel 2750 1450 0    60   Input ~ 0
PWM
Text GLabel 2750 1550 0    60   Input ~ 0
MOT_DIS
Text GLabel 1750 2650 0    60   Input ~ 0
SS_C1
Text GLabel 1750 2750 0    60   Input ~ 0
SS_C2
Text GLabel 1750 1450 0    60   Input ~ 0
EN_C1
Text GLabel 1750 1550 0    60   Input ~ 0
EN_C2
Text GLabel 4550 1450 2    60   Input ~ 0
LIMSW_1
Text GLabel 3850 1450 0    60   Input ~ 0
LIMSW_2
Text GLabel 1750 2200 0    60   Input ~ 0
MOSI
Text GLabel 1750 2100 0    60   Input ~ 0
MISO
Text GLabel 1750 2000 0    60   Input ~ 0
SCK
NoConn ~ 4450 1550
NoConn ~ 4450 1650
NoConn ~ 4450 1750
NoConn ~ 4450 1850
NoConn ~ 4450 1950
NoConn ~ 4450 2050
NoConn ~ 4450 2150
NoConn ~ 3950 2150
NoConn ~ 3950 2050
NoConn ~ 3950 1950
NoConn ~ 3950 1850
NoConn ~ 3950 1750
NoConn ~ 3950 1650
NoConn ~ 3950 1550
NoConn ~ 2450 5550
NoConn ~ 2450 5450
NoConn ~ 2450 5350
NoConn ~ 2450 5250
NoConn ~ 2450 5150
NoConn ~ 2450 5050
NoConn ~ 2450 4850
NoConn ~ 2450 4450
NoConn ~ 2450 4350
NoConn ~ 4350 5350
NoConn ~ 4350 5450
NoConn ~ 4350 5550
$Comp
L CONN_01X02 P4
U 1 1 592E4DB1
P 5850 1500
F 0 "P4" H 5850 1650 50  0000 C CNN
F 1 "MOLEX_HEADER" V 5950 1500 50  0000 C CNN
F 2 "" H 5850 1500 50  0000 C CNN
F 3 "" H 5850 1500 50  0000 C CNN
	1    5850 1500
	1    0    0    -1  
$EndComp
Text GLabel 2300 4650 0    60   Input ~ 0
GND_1
Text GLabel 2300 4750 0    60   Input ~ 0
GND_2
Text GLabel 5550 1450 0    60   Input ~ 0
5v
Text GLabel 5550 1550 0    60   Input ~ 0
GND_3
Wire Notes Line
	8100 2250 8100 3800
Wire Notes Line
	9150 3800 9150 2250
Wire Notes Line
	9150 2250 8100 2250
Wire Notes Line
	8100 3800 9150 3800
Wire Wire Line
	4450 5250 4350 5250
Wire Wire Line
	4350 5150 4450 5150
Wire Wire Line
	4450 5050 4350 5050
Wire Wire Line
	4350 4950 4450 4950
Wire Wire Line
	4450 4850 4350 4850
Wire Wire Line
	4350 4650 4450 4650
Wire Wire Line
	4450 4550 4350 4550
Wire Wire Line
	4350 4450 4450 4450
Wire Wire Line
	4450 4350 4350 4350
Wire Wire Line
	4350 4250 4450 4250
Wire Wire Line
	4450 4150 4350 4150
Wire Wire Line
	3950 1450 3850 1450
Wire Wire Line
	4550 1450 4450 1450
Wire Wire Line
	1850 2650 1750 2650
Wire Wire Line
	1750 2750 1850 2750
Wire Wire Line
	1850 1550 1750 1550
Wire Wire Line
	1750 1450 1850 1450
Wire Wire Line
	1850 2200 1750 2200
Wire Wire Line
	1750 2100 1850 2100
Wire Wire Line
	1850 2000 1750 2000
Wire Wire Line
	2900 1450 2750 1450
Wire Wire Line
	2900 1550 2750 1550
Wire Wire Line
	2450 4650 2300 4650
Wire Wire Line
	2450 4750 2300 4750
Wire Wire Line
	5650 1550 5550 1550
Wire Wire Line
	5550 1450 5650 1450
Text Notes 1550 1150 0    60   ~ 12
Encoder\nCounters
Text Notes 2600 1250 0    60   ~ 12
H-Brigde\nMotor\nDrive
Text Notes 4050 1150 0    60   ~ 12
Limit\nSwitch
Wire Notes Line
	1250 900  6150 900 
Wire Notes Line
	5200 3150 1250 3150
Wire Notes Line
	1250 3150 1250 900 
Text Notes 7350 7500 0    60   ~ 0
Galileo shield
NoConn ~ 4350 3950
Text GLabel 2300 4550 0    60   Input ~ 0
5v
Wire Wire Line
	2450 4550 2300 4550
Text GLabel 4450 4050 2    60   Input ~ 0
GND_3
Wire Wire Line
	4450 4050 4350 4050
$Comp
L CONN_01X02 P?
U 1 1 592E631B
P 5850 2700
F 0 "P?" H 5850 2850 50  0000 C CNN
F 1 "MOLEX_HEADER" V 5950 2700 50  0000 C CNN
F 2 "" H 5850 2700 50  0000 C CNN
F 3 "" H 5850 2700 50  0000 C CNN
	1    5850 2700
	1    0    0    -1  
$EndComp
Text GLabel 5500 2650 0    60   Input ~ 0
GND_1
Text GLabel 5500 2750 0    60   Input ~ 0
GND_2
Wire Wire Line
	5650 2650 5500 2650
Wire Wire Line
	5500 2750 5650 2750
Wire Notes Line
	6150 900  6150 3150
Wire Notes Line
	6150 3150 5150 3150
Text Notes 5350 1200 0    60   ~ 12
Power/\nReference
$EndSCHEMATC
