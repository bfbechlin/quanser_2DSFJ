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
L Q_NMOS_DSG Q3
U 1 1 5927B300
P 4650 4300
F 0 "Q3" H 4950 4350 50  0000 R CNN
F 1 "IRFZ40" H 5100 4250 50  0000 R CNN
F 2 "" H 4850 4400 50  0000 C CNN
F 3 "" H 4650 4300 50  0000 C CNN
	1    4650 4300
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DSG Q4
U 1 1 5927B3D1
P 4650 4900
F 0 "Q4" H 4950 4950 50  0000 R CNN
F 1 "IRFZ40" H 5100 4850 50  0000 R CNN
F 2 "" H 4850 5000 50  0000 C CNN
F 3 "" H 4650 4900 50  0000 C CNN
	1    4650 4900
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DSG Q1
U 1 1 5927B410
P 4150 5550
F 0 "Q1" H 4450 5600 50  0000 R CNN
F 1 "IRFZ40" H 4600 5500 50  0000 R CNN
F 2 "" H 4350 5650 50  0000 C CNN
F 3 "" H 4150 5550 50  0000 C CNN
	1    4150 5550
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DSG Q2
U 1 1 5927B45A
P 4150 6150
F 0 "Q2" H 4450 6200 50  0000 R CNN
F 1 "IRFZ40" H 4600 6100 50  0000 R CNN
F 2 "" H 4350 6250 50  0000 C CNN
F 3 "" H 4150 6150 50  0000 C CNN
	1    4150 6150
	1    0    0    -1  
$EndComp
$Comp
L HIP4081A U3
U 1 1 5928475F
P 3000 5850
F 0 "U3" H 3000 5850 60  0000 C CNN
F 1 "HIP4081A" H 3000 5950 60  0000 C CNN
F 2 "" H 3000 5850 60  0000 C CNN
F 3 "" H 3000 5850 60  0000 C CNN
	1    3000 5850
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U2
U 1 1 59284841
P 2600 2500
F 0 "U2" H 2750 2304 50  0000 C CNN
F 1 "LM7805" H 2600 2700 50  0000 C CNN
F 2 "" H 2600 2500 50  0000 C CNN
F 3 "" H 2600 2500 50  0000 C CNN
	1    2600 2500
	1    0    0    -1  
$EndComp
$Comp
L LM7812 U1
U 1 1 592848E4
P 2600 1500
F 0 "U1" H 2750 1304 50  0000 C CNN
F 1 "LM7812" H 2600 1700 50  0000 C CNN
F 2 "" H 2600 1500 50  0000 C CNN
F 3 "" H 2600 1500 50  0000 C CNN
	1    2600 1500
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR2
U 1 1 592854E9
P 2600 1850
F 0 "#PWR2" H 2600 1600 50  0001 C CNN
F 1 "GNDREF" H 2600 1700 50  0000 C CNN
F 2 "" H 2600 1850 50  0000 C CNN
F 3 "" H 2600 1850 50  0000 C CNN
	1    2600 1850
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR3
U 1 1 59285971
P 2600 2850
F 0 "#PWR3" H 2600 2600 50  0001 C CNN
F 1 "GNDREF" H 2600 2700 50  0000 C CNN
F 2 "" H 2600 2850 50  0000 C CNN
F 3 "" H 2600 2850 50  0000 C CNN
	1    2600 2850
	1    0    0    -1  
$EndComp
Text GLabel 3150 1450 2    60   Input ~ 0
12V
Text GLabel 3150 2450 2    60   Input ~ 0
5V
$Comp
L CP1 C5
U 1 1 5928608E
P 3050 2650
F 0 "C5" H 3075 2750 50  0000 L CNN
F 1 "0.1 uF 16V" H 2800 2550 50  0000 L CNN
F 2 "" H 3050 2650 50  0000 C CNN
F 3 "" H 3050 2650 50  0000 C CNN
	1    3050 2650
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 5928621B
P 2150 2650
F 0 "C2" H 2175 2750 50  0000 L CNN
F 1 "0.33 uF 35V" H 1850 2550 50  0000 L CNN
F 2 "" H 2150 2650 50  0000 C CNN
F 3 "" H 2150 2650 50  0000 C CNN
	1    2150 2650
	1    0    0    -1  
$EndComp
Text GLabel 1350 1450 0    60   Input ~ 0
VIN_REG
$Comp
L CP1 C1
U 1 1 5928636F
P 2150 1650
F 0 "C1" H 2175 1750 50  0000 L CNN
F 1 "0.33 uF 35V" H 1850 1550 50  0000 L CNN
F 2 "" H 2150 1650 50  0000 C CNN
F 3 "" H 2150 1650 50  0000 C CNN
	1    2150 1650
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 592863C1
P 3050 1650
F 0 "C4" H 3075 1750 50  0000 L CNN
F 1 "0.1 uF 16V" H 2800 1550 50  0000 L CNN
F 2 "" H 3050 1650 50  0000 C CNN
F 3 "" H 3050 1650 50  0000 C CNN
	1    3050 1650
	1    0    0    -1  
$EndComp
Text Notes 2000 1100 0    60   ~ 12
VOLTAGE REGULATORS
$Comp
L SN74S04 U4
U 1 1 59287EA6
P 6250 2450
F 0 "U4" H 6250 2450 60  0000 C CNN
F 1 "SN74S04" H 6250 2550 60  0000 C CNN
F 2 "" H 6250 2450 60  0000 C CNN
F 3 "" H 6250 2450 60  0000 C CNN
	1    6250 2450
	1    0    0    -1  
$EndComp
Text GLabel 5150 1450 0    60   Input ~ 0
PWM
Text GLabel 5700 1700 0    60   Input ~ 0
IN_A
Text GLabel 5700 2100 0    60   Input ~ 0
IN_B
Text Notes 5700 1100 0    60   ~ 12
PWM LOGIC BUFFER\n
Text Notes 5400 3050 0    60   ~ 0
Vi_h   = 2v		Vi_l    = 0.8v\nVo_h  = 3.4v	Vo_l   = 0.5v\ntp_lh  = 4.5ns	tp_hl = 5ns\ndriving 50pF\nMaximum delay aprox. 10 ns
NoConn ~ 6650 1900
NoConn ~ 6650 2000
NoConn ~ 6650 2100
NoConn ~ 6650 2200
Text GLabel 6800 1600 2    60   Input ~ 0
5V
Text Notes 800  1350 0    60   ~ 12
12v - 35v
Text GLabel 4900 4600 2    60   Input ~ 0
LOAD+
Text GLabel 4400 5850 2    60   Input ~ 0
LOAD-
$Comp
L GNDREF #PWR5
U 1 1 5928E17D
P 4750 5200
F 0 "#PWR5" H 4750 4950 50  0001 C CNN
F 1 "GNDREF" H 4750 5050 50  0000 C CNN
F 2 "" H 4750 5200 50  0000 C CNN
F 3 "" H 4750 5200 50  0000 C CNN
	1    4750 5200
	1    0    0    -1  
$EndComp
Text GLabel 1300 4050 0    60   Input ~ 0
VIN_LOAD
Text GLabel 3650 5150 2    60   Input ~ 0
12V
Text GLabel 2050 5200 0    60   Input ~ 0
IN_B
Text GLabel 2050 5100 0    60   Input ~ 0
IN_A
$Comp
L GNDREF #PWR4
U 1 1 5928FDB8
P 4250 6500
F 0 "#PWR4" H 4250 6250 50  0001 C CNN
F 1 "GNDREF" H 4250 6350 50  0000 C CNN
F 2 "" H 4250 6500 50  0000 C CNN
F 3 "" H 4250 6500 50  0000 C CNN
	1    4250 6500
	1    0    0    -1  
$EndComp
Text GLabel 4200 5250 0    60   Input ~ 0
V+
Text GLabel 4650 4000 0    60   Input ~ 0
V+
$Comp
L GNDREF #PWR1
U 1 1 592908A4
P 2100 5950
F 0 "#PWR1" H 2100 5700 50  0001 C CNN
F 1 "GNDREF" H 2100 5800 50  0000 C CNN
F 2 "" H 2100 5950 50  0000 C CNN
F 3 "" H 2100 5950 50  0000 C CNN
	1    2100 5950
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 592914D2
P 3550 4450
F 0 "C6" H 3575 4550 50  0000 L CNN
F 1 "C_bootstrap" H 3575 4350 50  0000 L CNN
F 2 "" H 3550 4450 50  0000 C CNN
F 3 "" H 3550 4450 50  0000 C CNN
	1    3550 4450
	1    0    0    -1  
$EndComp
Text GLabel 2000 4800 0    60   Input ~ 0
12V
$Comp
L D D3
U 1 1 59291A64
P 2250 4400
F 0 "D3" H 2250 4500 50  0000 C CNN
F 1 "1N4148" H 2250 4300 50  0000 C CNN
F 2 "" H 2250 4400 50  0000 C CNN
F 3 "" H 2250 4400 50  0000 C CNN
	1    2250 4400
	0    1    1    0   
$EndComp
Text GLabel 2200 6450 0    60   Input ~ 0
12V
$Comp
L CP1 C3
U 1 1 5928EFA1
P 3200 6100
F 0 "C3" H 3225 6200 50  0000 L CNN
F 1 "C_bootstrap" V 3050 5900 50  0000 L CNN
F 2 "" H 3200 6100 50  0000 C CNN
F 3 "" H 3200 6100 50  0000 C CNN
	1    3200 6100
	0    -1   -1   0   
$EndComp
$Comp
L D D4
U 1 1 5928F569
P 2550 6300
F 0 "D4" H 2550 6400 50  0000 C CNN
F 1 "1N4148" H 2550 6200 50  0000 C CNN
F 2 "" H 2550 6300 50  0000 C CNN
F 3 "" H 2550 6300 50  0000 C CNN
	1    2550 6300
	0    1    1    0   
$EndComp
Text GLabel 1300 4900 0    60   Input ~ 0
MOT_DIS
Text GLabel 2100 4050 2    60   Input ~ 0
V+
Text Notes 3450 3850 0    60   ~ 12
FULL H-BRIDGE DRIVER
Text Notes 2350 4150 0    60   ~ 0
PWM frequency 1 kHz\nC_bootstrap aprox 1uF (16V) or more\nD_bootstrap can be a 1N4148 (LOW Freq.)
Text Notes 5600 1350 0    60   ~ 0
SN74S04 (TTL)\nSmall transition time
$Comp
L GNDREF #PWR6
U 1 1 59289833
P 5700 2250
F 0 "#PWR6" H 5700 2000 50  0001 C CNN
F 1 "GNDREF" H 5700 2100 50  0000 C CNN
F 2 "" H 5700 2250 50  0000 C CNN
F 3 "" H 5700 2250 50  0000 C CNN
	1    5700 2250
	1    0    0    -1  
$EndComp
Text Notes 850  3950 0    60   ~ 12
27v
Text Notes 4000 3050 0    60   ~ 12
PWM\nMOT_DIS\nSS_C1\nSS_C2\nEN_C1\nEN_C2\nLIMSW_1\nLIMSW_2\nMOSI\nMISO\nSCK
Text Notes 4450 3050 0    60   ~ 12
GPIO_03\nGPIO_04\nGPIO_05\nGPIO_06\nGPIO_07\nGPIO_08\nGPIO_09\nGPIO_10\nGPIO_11\nGPIO_12\nGPIO_13
Text Notes 4000 1900 0    79   ~ 16
PIN HEADER\n  GALILEO
$Comp
L D D1
U 1 1 592A379A
P 1900 2450
F 0 "D1" H 1900 2550 50  0000 C CNN
F 1 "1N4004" H 1900 2350 50  0000 C CNN
F 2 "" H 1900 2450 50  0000 C CNN
F 3 "" H 1900 2450 50  0000 C CNN
	1    1900 2450
	-1   0    0    1   
$EndComp
$Comp
L D D2
U 1 1 592A3E5B
P 1950 1450
F 0 "D2" H 1950 1550 50  0000 C CNN
F 1 "1N4004" H 1950 1350 50  0000 C CNN
F 2 "" H 1950 1450 50  0000 C CNN
F 3 "" H 1950 1450 50  0000 C CNN
	1    1950 1450
	-1   0    0    1   
$EndComp
NoConn ~ 6650 1800
NoConn ~ 6650 1700
$Comp
L R R1
U 1 1 592A82E0
P 1650 5450
F 0 "R1" V 1730 5450 50  0000 C CNN
F 1 "10k" V 1650 5450 50  0000 C CNN
F 2 "" V 1580 5450 50  0000 C CNN
F 3 "" H 1650 5450 50  0000 C CNN
	1    1650 5450
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 592B20B4
P 1850 5750
F 0 "RV1" H 1950 5850 50  0000 C CNN
F 1 "500K" H 1850 5750 50  0000 C CNN
F 2 "" H 1850 5750 50  0000 C CNN
F 3 "" H 1850 5750 50  0000 C CNN
	1    1850 5750
	0    1    1    0   
$EndComp
$Comp
L POT RV2
U 1 1 592B2648
P 2200 5750
F 0 "RV2" H 2300 5850 50  0000 C CNN
F 1 "500K" H 2200 5750 50  0000 C CNN
F 2 "" H 2200 5750 50  0000 C CNN
F 3 "" H 2200 5750 50  0000 C CNN
	1    2200 5750
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 592B3566
P 9400 3450
F 0 "P3" H 9400 3600 50  0000 C CNN
F 1 "TERM_BLOCK_CON" V 9500 3450 50  0000 C CNN
F 2 "" H 9400 3450 50  0000 C CNN
F 3 "" H 9400 3450 50  0000 C CNN
	1    9400 3450
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 592B36CF
P 8050 3450
F 0 "P1" H 8050 3600 50  0000 C CNN
F 1 "TERM_BLOCK_CON" V 8150 3450 50  0000 C CNN
F 2 "" H 8050 3450 50  0000 C CNN
F 3 "" H 8050 3450 50  0000 C CNN
	1    8050 3450
	-1   0    0    1   
$EndComp
Text GLabel 9800 3400 2    60   Input ~ 0
VIN_CIRCUIT
Text GLabel 9800 3500 2    60   Input ~ 0
GND
Text GLabel 8450 3500 2    60   Input ~ 0
GND
Text GLabel 8450 3400 2    60   Input ~ 0
VIN_LOAD
$Comp
L CONN_01X03 P2
U 1 1 592B4ED2
P 8050 4350
F 0 "P2" H 8050 4550 50  0000 C CNN
F 1 "JUMPER_CIRC_SUPLLY" V 8150 4350 50  0000 C CNN
F 2 "" H 8050 4350 50  0000 C CNN
F 3 "" H 8050 4350 50  0000 C CNN
	1    8050 4350
	-1   0    0    1   
$EndComp
Text GLabel 8450 4250 2    60   Input ~ 0
VIN_CIRCUIT
Text GLabel 8450 4450 2    60   Input ~ 0
VIN_LOAD
Text GLabel 8450 4350 2    60   Input ~ 0
VIN_REG
$Comp
L CONN_01X02 P4
U 1 1 592B61DA
P 9400 4300
F 0 "P4" H 9400 4450 50  0000 C CNN
F 1 "FEMALE_HEADER" V 9500 4300 50  0000 C CNN
F 2 "" H 9400 4300 50  0000 C CNN
F 3 "" H 9400 4300 50  0000 C CNN
	1    9400 4300
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 592B6361
P 9900 4300
F 0 "P5" H 9900 4450 50  0000 C CNN
F 1 "MOLEX_HEADER" V 10000 4300 50  0000 C CNN
F 2 "" H 9900 4300 50  0000 C CNN
F 3 "" H 9900 4300 50  0000 C CNN
	1    9900 4300
	1    0    0    -1  
$EndComp
Text GLabel 10150 4200 2    60   Input ~ 0
PWM
Text GLabel 10150 4350 2    60   Input ~ 0
MOT_DIS
Text GLabel 5750 6050 0    60   Input ~ 0
12V
$Comp
L GNDREF #PWR7
U 1 1 592B9B2E
P 5850 6500
F 0 "#PWR7" H 5850 6250 50  0001 C CNN
F 1 "GNDREF" H 5850 6350 50  0000 C CNN
F 2 "" H 5850 6500 50  0000 C CNN
F 3 "" H 5850 6500 50  0000 C CNN
	1    5850 6500
	1    0    0    -1  
$EndComp
$Comp
L CP1 C7
U 1 1 592B9B8A
P 5850 6250
F 0 "C7" H 5875 6350 50  0000 L CNN
F 1 "10uFx16v" H 5875 6150 50  0000 L CNN
F 2 "" H 5850 6250 50  0000 C CNN
F 3 "" H 5850 6250 50  0000 C CNN
	1    5850 6250
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 592BA7D7
P 6300 6250
F 0 "C10" H 6325 6350 50  0000 L CNN
F 1 "100nF" H 6325 6150 50  0000 L CNN
F 2 "" H 6338 6100 50  0000 C CNN
F 3 "" H 6300 6250 50  0000 C CNN
	1    6300 6250
	1    0    0    -1  
$EndComp
Text GLabel 5700 4000 0    60   Input ~ 0
V+
$Comp
L GNDREF #PWR8
U 1 1 592BAC7E
P 5900 4400
F 0 "#PWR8" H 5900 4150 50  0001 C CNN
F 1 "GNDREF" H 5900 4250 50  0000 C CNN
F 2 "" H 5900 4400 50  0000 C CNN
F 3 "" H 5900 4400 50  0000 C CNN
	1    5900 4400
	1    0    0    -1  
$EndComp
$Comp
L CP1 C8
U 1 1 592BAECD
P 5900 4150
F 0 "C8" H 5925 4250 50  0000 L CNN
F 1 "1000uFx100v" H 5925 4050 50  0000 L CNN
F 2 "" H 5900 4150 50  0000 C CNN
F 3 "" H 5900 4150 50  0000 C CNN
	1    5900 4150
	1    0    0    -1  
$EndComp
Text Notes 5400 5900 0    60   ~ 0
Place near of Vdd/Vcc and Vss
Text Notes 5350 3900 0    60   ~ 0
Place near of MOS Bridge (LEFT)
Text GLabel 5700 5050 0    60   Input ~ 0
V+
$Comp
L GNDREF #PWR9
U 1 1 592BBF61
P 5900 5450
F 0 "#PWR9" H 5900 5200 50  0001 C CNN
F 1 "GNDREF" H 5900 5300 50  0000 C CNN
F 2 "" H 5900 5450 50  0000 C CNN
F 3 "" H 5900 5450 50  0000 C CNN
	1    5900 5450
	1    0    0    -1  
$EndComp
$Comp
L CP1 C9
U 1 1 592BBF67
P 5900 5200
F 0 "C9" H 5925 5300 50  0000 L CNN
F 1 "1000uFx100v" H 5925 5100 50  0000 L CNN
F 2 "" H 5900 5200 50  0000 C CNN
F 3 "" H 5900 5200 50  0000 C CNN
	1    5900 5200
	1    0    0    -1  
$EndComp
Text Notes 5350 4950 0    60   ~ 0
Place near of MOS Bridge (RIGHT)
Text Notes 900  4800 0    60   ~ 12
Vih = 2.7v 
Text GLabel 8100 5600 0    60   Input ~ 0
12V
$Comp
L R R2
U 1 1 592C0195
P 8450 5600
F 0 "R2" V 8530 5600 50  0000 C CNN
F 1 "560" V 8450 5600 50  0000 C CNN
F 2 "" V 8380 5600 50  0000 C CNN
F 3 "" H 8450 5600 50  0000 C CNN
	1    8450 5600
	0    1    1    0   
$EndComp
$Comp
L LED D6
U 1 1 592C0208
P 8950 5600
F 0 "D6" H 8950 5700 50  0000 C CNN
F 1 "LED" H 8950 5500 50  0000 C CNN
F 2 "" H 8950 5600 50  0000 C CNN
F 3 "" H 8950 5600 50  0000 C CNN
	1    8950 5600
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 592C0381
P 8450 5950
F 0 "R3" V 8530 5950 50  0000 C CNN
F 1 "220" V 8450 5950 50  0000 C CNN
F 2 "" V 8380 5950 50  0000 C CNN
F 3 "" H 8450 5950 50  0000 C CNN
	1    8450 5950
	0    1    1    0   
$EndComp
$Comp
L LED D7
U 1 1 592C0388
P 8950 5950
F 0 "D7" H 8950 6050 50  0000 C CNN
F 1 "LED" H 8950 5850 50  0000 C CNN
F 2 "" H 8950 5950 50  0000 C CNN
F 3 "" H 8950 5950 50  0000 C CNN
	1    8950 5950
	-1   0    0    1   
$EndComp
Text GLabel 8100 5950 0    60   Input ~ 0
5V
$Comp
L GNDREF #PWR10
U 1 1 592C07CF
P 9300 5650
F 0 "#PWR10" H 9300 5400 50  0001 C CNN
F 1 "GNDREF" H 9300 5500 50  0000 C CNN
F 2 "" H 9300 5650 50  0000 C CNN
F 3 "" H 9300 5650 50  0000 C CNN
	1    9300 5650
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR11
U 1 1 592C08CF
P 9300 6000
F 0 "#PWR11" H 9300 5750 50  0001 C CNN
F 1 "GNDREF" H 9300 5850 50  0000 C CNN
F 2 "" H 9300 6000 50  0000 C CNN
F 3 "" H 9300 6000 50  0000 C CNN
	1    9300 6000
	1    0    0    -1  
$EndComp
Text Notes 8250 5350 0    60   ~ 12
CIRCUIT STATUS 
Text Notes 8800 2450 0    60   ~ 12
PIN HEADER INTERFACE
Text GLabel 7500 1250 0    60   Input ~ 0
5V
$Comp
L GNDREF #PWR?
U 1 1 592E11DC
P 7600 1700
F 0 "#PWR?" H 7600 1450 50  0001 C CNN
F 1 "GNDREF" H 7600 1550 50  0000 C CNN
F 2 "" H 7600 1700 50  0000 C CNN
F 3 "" H 7600 1700 50  0000 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 592E11E2
P 7600 1450
F 0 "C?" H 7625 1550 50  0000 L CNN
F 1 "10uFx16v" H 7625 1350 50  0000 L CNN
F 2 "" H 7600 1450 50  0000 C CNN
F 3 "" H 7600 1450 50  0000 C CNN
	1    7600 1450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 592E11EB
P 8050 1450
F 0 "C?" H 8075 1550 50  0000 L CNN
F 1 "100nF" H 8075 1350 50  0000 L CNN
F 2 "" H 8088 1300 50  0000 C CNN
F 3 "" H 8050 1450 50  0000 C CNN
	1    8050 1450
	1    0    0    -1  
$EndComp
Text Notes 7150 1100 0    60   ~ 0
Place near of Vcc and Gnd
$Comp
L CONN_01X02 P?
U 1 1 592E7E13
P 8050 2650
F 0 "P?" H 8050 2800 50  0000 C CNN
F 1 "TERM_BLOCK_CON" V 8150 2650 50  0000 C CNN
F 2 "" H 8050 2650 50  0000 C CNN
F 3 "" H 8050 2650 50  0000 C CNN
	1    8050 2650
	-1   0    0    1   
$EndComp
Text GLabel 8450 2600 2    60   Input ~ 0
LOAD+
Text GLabel 8450 2700 2    60   Input ~ 0
LOAD-
Wire Wire Line
	3000 2450 3150 2450
Wire Wire Line
	2600 2750 2600 2850
Wire Wire Line
	3000 1450 3150 1450
Wire Wire Line
	2600 1750 2600 1850
Wire Wire Line
	3050 2850 3050 2800
Wire Wire Line
	3050 2500 3050 2450
Connection ~ 3050 2450
Connection ~ 2600 2850
Wire Wire Line
	3050 1850 3050 1800
Connection ~ 2600 1850
Connection ~ 3050 1450
Wire Wire Line
	3050 1500 3050 1450
Wire Wire Line
	2150 1500 2150 1450
Connection ~ 2150 1450
Wire Wire Line
	2150 1800 2150 1850
Wire Wire Line
	2150 1850 3050 1850
Wire Wire Line
	2150 2850 3050 2850
Wire Wire Line
	2150 2800 2150 2850
Wire Wire Line
	2150 2500 2150 2450
Connection ~ 2150 2450
Wire Notes Line
	1500 950  3500 950 
Wire Notes Line
	3500 950  3500 3150
Wire Notes Line
	3500 3150 1500 3150
Wire Notes Line
	1500 3150 1500 950 
Wire Wire Line
	5700 1700 5800 1700
Wire Wire Line
	5800 1900 5750 1900
Wire Wire Line
	5750 1900 5750 2000
Wire Wire Line
	5750 2000 5800 2000
Wire Wire Line
	5800 2100 5700 2100
Wire Wire Line
	5350 1600 5800 1600
Wire Notes Line
	5300 950  5300 3150
Wire Notes Line
	5300 3150 7000 3150
Wire Wire Line
	5350 1450 5350 1800
Wire Wire Line
	5350 1800 5800 1800
Connection ~ 5350 1600
Wire Wire Line
	5350 1450 5150 1450
Wire Notes Line
	5300 950  8600 950 
Wire Wire Line
	6800 1600 6650 1600
Wire Wire Line
	5700 2250 5700 2200
Wire Wire Line
	5700 2200 5800 2200
Wire Wire Line
	3450 5100 3500 5100
Wire Wire Line
	3500 5100 3500 5200
Wire Wire Line
	3500 5200 3450 5200
Wire Wire Line
	4350 4800 3450 4800
Wire Wire Line
	3450 4900 4450 4900
Wire Wire Line
	3450 5000 4450 5000
Wire Wire Line
	4750 4500 4750 4700
Wire Wire Line
	4750 4600 4900 4600
Connection ~ 4750 4600
Wire Wire Line
	4250 4700 3450 4700
Wire Wire Line
	4250 4300 4250 4700
Wire Wire Line
	4350 4500 4350 4800
Wire Wire Line
	4350 4500 4750 4500
Wire Wire Line
	4750 5200 4750 5100
Wire Wire Line
	3500 5150 3650 5150
Connection ~ 3500 5150
Wire Wire Line
	3450 5400 3800 5400
Wire Wire Line
	3450 5500 3750 5500
Wire Wire Line
	3450 5600 3700 5600
Wire Wire Line
	4250 5750 4250 5950
Wire Wire Line
	2050 5100 2550 5100
Wire Wire Line
	2050 5200 2550 5200
Wire Wire Line
	4750 5100 4450 5100
Wire Wire Line
	4450 5100 4450 5000
Wire Wire Line
	4250 4300 4450 4300
Wire Wire Line
	4250 6350 4250 6500
Wire Wire Line
	3850 5550 3950 5550
Wire Wire Line
	3800 5400 3800 5750
Wire Wire Line
	3800 5750 4250 5750
Wire Wire Line
	3450 5300 3850 5300
Wire Wire Line
	3850 5300 3850 5550
Wire Wire Line
	3750 5500 3750 6150
Wire Wire Line
	3750 6150 3950 6150
Wire Wire Line
	3700 5600 3700 6350
Wire Wire Line
	3700 6350 4250 6350
Wire Wire Line
	4200 5250 4250 5250
Wire Wire Line
	4250 5250 4250 5350
Wire Wire Line
	4650 4000 4750 4000
Wire Wire Line
	4750 4000 4750 4100
Wire Wire Line
	1850 5400 2550 5400
Wire Wire Line
	2200 5500 2550 5500
Connection ~ 2100 5950
Wire Wire Line
	4250 5850 4400 5850
Connection ~ 4250 5850
Wire Wire Line
	3550 4600 3550 4800
Connection ~ 3550 4800
Wire Wire Line
	2450 4700 2550 4700
Wire Wire Line
	2450 4200 2450 4700
Wire Wire Line
	3550 4200 3550 4300
Wire Wire Line
	2100 5000 2550 5000
Wire Wire Line
	2100 5950 2100 5000
Connection ~ 3550 5500
Wire Wire Line
	2550 5300 2400 5300
Wire Wire Line
	2400 5300 2400 6450
Wire Wire Line
	2550 5600 2550 6150
Wire Wire Line
	2550 6100 3050 6100
Wire Wire Line
	3350 6100 3550 6100
Wire Wire Line
	3550 6100 3550 5500
Wire Wire Line
	2200 6450 2550 6450
Connection ~ 2400 6450
Connection ~ 2550 6100
Wire Wire Line
	1300 4900 2550 4900
Wire Notes Line
	1500 6800 6950 6800
Wire Notes Line
	1500 3700 6950 3700
Wire Wire Line
	2250 4550 2250 4800
Wire Wire Line
	2000 4800 2550 4800
Wire Wire Line
	2250 4250 2250 4200
Wire Wire Line
	2250 4200 3550 4200
Connection ~ 2450 4200
Connection ~ 2250 4800
Wire Wire Line
	2050 2450 2200 2450
Wire Wire Line
	1750 2450 1750 1450
Connection ~ 1750 1450
Wire Wire Line
	2100 1450 2200 1450
Wire Wire Line
	1350 1450 1800 1450
Wire Notes Line
	3850 1600 3850 3150
Wire Notes Line
	4900 3150 4900 1600
Wire Notes Line
	4900 1600 3850 1600
Wire Notes Line
	3850 3150 4900 3150
Wire Wire Line
	1850 5400 1850 5600
Connection ~ 2000 5950
Wire Wire Line
	2200 5500 2200 5600
Wire Wire Line
	1850 5900 1850 5950
Connection ~ 1850 5950
Wire Wire Line
	2200 5950 2200 5900
Wire Wire Line
	9600 3400 9800 3400
Wire Wire Line
	9800 3500 9600 3500
Wire Wire Line
	8250 3400 8450 3400
Wire Wire Line
	8450 3500 8250 3500
Wire Wire Line
	1300 4050 2100 4050
Wire Wire Line
	8450 4250 8250 4250
Wire Wire Line
	8450 4350 8250 4350
Wire Wire Line
	8450 4450 8250 4450
Wire Wire Line
	9700 4250 9600 4250
Wire Wire Line
	9600 4350 9700 4350
Wire Wire Line
	10150 4200 10100 4200
Wire Wire Line
	10100 4200 10100 4050
Wire Wire Line
	10100 4050 9650 4050
Wire Wire Line
	9650 4050 9650 4250
Connection ~ 9650 4250
Wire Wire Line
	10150 4350 10100 4350
Wire Wire Line
	10100 4350 10100 4550
Wire Wire Line
	10100 4550 9650 4550
Wire Wire Line
	9650 4550 9650 4350
Connection ~ 9650 4350
Wire Wire Line
	1650 5950 1650 5600
Wire Wire Line
	1650 5300 1650 4900
Connection ~ 1650 4900
Wire Notes Line
	1500 3700 1500 6800
Wire Wire Line
	1650 5950 2200 5950
Wire Wire Line
	2350 5750 2350 5550
Wire Wire Line
	2350 5550 2200 5550
Connection ~ 2200 5550
Wire Wire Line
	2000 5750 2000 5550
Wire Wire Line
	2000 5550 1850 5550
Connection ~ 1850 5550
Wire Wire Line
	5750 6050 6300 6050
Wire Wire Line
	5850 6050 5850 6100
Wire Wire Line
	5850 6400 5850 6500
Wire Wire Line
	6300 6050 6300 6100
Connection ~ 5850 6050
Wire Wire Line
	6300 6400 6300 6500
Wire Wire Line
	6300 6500 5850 6500
Wire Wire Line
	5900 4300 5900 4400
Wire Wire Line
	5900 4000 5700 4000
Wire Wire Line
	5900 5350 5900 5450
Wire Wire Line
	5900 5050 5700 5050
Wire Notes Line
	6950 3700 6950 6800
Wire Wire Line
	8100 5950 8300 5950
Wire Wire Line
	8600 5950 8750 5950
Wire Wire Line
	9150 5950 9300 5950
Wire Wire Line
	9300 5950 9300 6000
Wire Wire Line
	9300 5650 9300 5600
Wire Wire Line
	9300 5600 9150 5600
Wire Wire Line
	8750 5600 8600 5600
Wire Wire Line
	8300 5600 8100 5600
Wire Notes Line
	7600 5250 7600 6250
Wire Notes Line
	7600 6250 9700 6250
Wire Notes Line
	9700 6250 9700 5150
Wire Notes Line
	9700 5150 7600 5150
Wire Notes Line
	7600 5150 7600 5300
Wire Notes Line
	10800 4800 7600 4800
Wire Notes Line
	7600 2250 7600 4800
Wire Notes Line
	10800 2250 10800 4800
Wire Wire Line
	7500 1250 8050 1250
Wire Wire Line
	7600 1250 7600 1300
Wire Wire Line
	7600 1600 7600 1700
Wire Wire Line
	8050 1250 8050 1300
Connection ~ 7600 1250
Wire Wire Line
	8050 1600 8050 1700
Wire Wire Line
	8050 1700 7600 1700
Wire Notes Line
	7000 2050 8600 2050
Wire Notes Line
	8600 2050 8600 950 
Wire Notes Line
	7000 3150 7000 2050
Wire Wire Line
	8450 2600 8250 2600
Wire Wire Line
	8250 2700 8450 2700
Wire Notes Line
	7600 2250 10800 2250
$EndSCHEMATC
