EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Схема принципиальная электрическая"
Date ""
Rev ""
Comp "МГТУ им. Н.Э. Баумана\\nгруппа ИУ6-71Б"
Comment1 "Устройство регистрации и обработки потоков входных данных"
Comment2 "Л.А. Беляев"
Comment3 "В.Я. Хартов"
Comment4 ""
$EndDescr
$Comp
L prinsip-rescue:MCP23S17_SO-Interface_Expansion U4
U 1 1 618932CE
P 8250 2750
F 0 "U4" H 8250 4031 50  0000 C CNN
F 1 "MCP23S17_SO" H 8250 3940 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 8450 1750 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 8450 1650 50  0001 L CNN
	1    8250 2750
	-1   0    0    -1  
$EndComp
$Comp
L prinsip-rescue:SW_MEC_5G-Switch SW1
U 1 1 618A64A7
P 7600 8950
F 0 "SW1" H 7600 9235 50  0000 C CNN
F 1 "SW_MEC_5G" H 7600 9144 50  0000 C CNN
F 2 "" H 7600 9150 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 7600 9150 50  0001 C CNN
	1    7600 8950
	1    0    0    -1  
$EndComp
$Comp
L prinsip-rescue:Earth-power #PWR?
U 1 1 618ACA20
P 7300 10500
F 0 "#PWR?" H 7300 10250 50  0001 C CNN
F 1 "Earth" H 7300 10350 50  0001 C CNN
F 2 "" H 7300 10500 50  0001 C CNN
F 3 "~" H 7300 10500 50  0001 C CNN
	1    7300 10500
	1    0    0    -1  
$EndComp
$Comp
L prinsip-rescue:SW_MEC_5G-Switch SW2
U 1 1 618AE5B4
P 7600 9300
F 0 "SW2" H 7600 9585 50  0000 C CNN
F 1 "SW_MEC_5G" H 7600 9494 50  0000 C CNN
F 2 "" H 7600 9500 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 7600 9500 50  0001 C CNN
	1    7600 9300
	1    0    0    -1  
$EndComp
$Comp
L prinsip-rescue:SW_MEC_5G-Switch SW3
U 1 1 618AFC40
P 7600 9650
F 0 "SW3" H 7600 9935 50  0000 C CNN
F 1 "SW_MEC_5G" H 7600 9844 50  0000 C CNN
F 2 "" H 7600 9850 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 7600 9850 50  0001 C CNN
	1    7600 9650
	1    0    0    -1  
$EndComp
$Comp
L prinsip-rescue:SW_MEC_5G-Switch SW4
U 1 1 618B119B
P 7600 10000
F 0 "SW4" H 7600 10285 50  0000 C CNN
F 1 "SW_MEC_5G" H 7600 10194 50  0000 C CNN
F 2 "" H 7600 10200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 7600 10200 50  0001 C CNN
	1    7600 10000
	1    0    0    -1  
$EndComp
$Comp
L prinsip-rescue:SW_MEC_5G-Switch SW5
U 1 1 618B1C38
P 7600 10350
F 0 "SW5" H 7600 10635 50  0000 C CNN
F 1 "SW_MEC_5G" H 7600 10544 50  0000 C CNN
F 2 "" H 7600 10550 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 7600 10550 50  0001 C CNN
	1    7600 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 8950 7300 8950
Wire Wire Line
	7300 8950 7300 9300
Wire Wire Line
	7400 9300 7300 9300
Connection ~ 7300 9300
Wire Wire Line
	7300 9300 7300 9650
Wire Wire Line
	7400 9650 7300 9650
Connection ~ 7300 9650
Wire Wire Line
	7300 9650 7300 10000
Wire Wire Line
	7400 10000 7300 10000
Connection ~ 7300 10000
Wire Wire Line
	7300 10000 7300 10350
Wire Wire Line
	7400 10350 7300 10350
Connection ~ 7300 10350
Wire Wire Line
	7300 10350 7300 10500
$Comp
L prinsip-rescue:74LS373-74xx U7
U 1 1 618B9D34
P 13500 3400
F 0 "U7" H 13500 4381 50  0000 C CNN
F 1 "74LS373" H 13500 4290 50  0000 C CNN
F 2 "" H 13500 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS373" H 13500 3400 50  0001 C CNN
	1    13500 3400
	1    0    0    -1  
$EndComp
$Comp
L prinsip-rescue:6264-custom U8
U 1 1 6189600C
P 15150 2750
F 0 "U8" H 15150 2865 50  0000 C CNN
F 1 "6264" H 15150 2774 50  0000 C CNN
F 2 "" H 15150 2750 50  0001 C CNN
F 3 "" H 15150 2750 50  0001 C CNN
	1    15150 2750
	1    0    0    -1  
$EndComp
Entry Wire Line
	19000 -1200 19100 -1100
Entry Wire Line
	20150 -600 20250 -500
Text Notes 4500 8400 0    118  ~ 0
Пульт оператора
Text Notes 3250 2150 0    197  ~ 0
Источник
$Comp
L prinsip-rescue:TM1637-TM1637 U2
U 1 1 61AB82C7
P 3350 9600
F 0 "U2" H 3350 10767 50  0000 C CNN
F 1 "TM1637" H 3350 10676 50  0000 C CNN
F 2 "DIP778W43P254L2612H431Q20N" H 3350 9600 50  0001 L BNN
F 3 "" H 3350 9600 50  0001 L BNN
F 4 "Titan Micro Electronics" H 3350 9600 50  0001 L BNN "MANUFACTURER"
F 5 "4.31 mm" H 3350 9600 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "IPC 7351B" H 3350 9600 50  0001 L BNN "STANDARD"
F 7 "v2.5" H 3350 9600 50  0001 L BNN "PARTREV"
	1    3350 9600
	1    0    0    -1  
$EndComp
Wire Notes Line
	2350 8200 2350 11100
Wire Notes Line
	8050 11100 8050 8200
Wire Notes Line
	2350 11100 8050 11100
Wire Notes Line
	2400 8200 8100 8200
$Comp
L prinsip-rescue:ATmega8515L-8JU-MCU_Microchip_ATmega U1
U 1 1 61892ED2
P 4300 4750
F 0 "U1" H 4300 7000 50  0000 C CNN
F 1 "ATmega8515L-8JU" H 4300 6900 50  0000 C CNN
F 2 "Package_LCC:PLCC-44" H 4300 4750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2512.pdf" H 4300 4750 50  0001 C CNN
	1    4300 4750
	1    0    0    -1  
$EndComp
$Comp
L prinsip-rescue:ATmega8515L-8JU-MCU_Microchip_ATmega U6
U 1 1 61894F8C
P 11050 4600
F 0 "U6" H 11050 6781 50  0000 C CNN
F 1 "ATmega8515L-8JU" H 11050 6690 50  0000 C CNN
F 2 "Package_LCC:PLCC-44" H 11050 4600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2512.pdf" H 11050 4600 50  0001 C CNN
	1    11050 4600
	-1   0    0    -1  
$EndComp
$Comp
L prinsip-rescue:CA56-12CGKWA-Display_Character U3
U 1 1 61AA78F0
P 5500 9900
F 0 "U3" H 5500 10567 50  0000 C CNN
F 1 "CA56-12CGKWA" H 5500 10476 50  0000 C CNN
F 2 "Display_7Segment:CA56-12CGKWA" H 5500 9300 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/CA56-12CGKWA(Ver.9A).pdf" H 5070 9930 50  0001 C CNN
	1    5500 9900
	1    0    0    -1  
$EndComp
Wire Bus Line
	15650 2900 15850 2900
Entry Bus Bus
	15850 2900 15950 3000
Wire Wire Line
	14000 2900 14250 2900
Entry Wire Line
	14250 2900 14350 3000
Wire Wire Line
	14000 3000 14250 3000
Entry Wire Line
	14250 3000 14350 3100
Wire Wire Line
	14000 3100 14250 3100
Entry Wire Line
	14250 3100 14350 3200
Wire Wire Line
	14000 3200 14250 3200
Entry Wire Line
	14250 3200 14350 3300
Wire Wire Line
	14000 3300 14250 3300
Entry Wire Line
	14250 3300 14350 3400
Wire Wire Line
	14000 3400 14250 3400
Entry Wire Line
	14250 3400 14350 3500
Wire Wire Line
	14000 3500 14250 3500
Entry Wire Line
	14250 3500 14350 3600
Wire Wire Line
	14000 3600 14250 3600
Entry Wire Line
	14250 3600 14350 3700
Wire Bus Line
	14350 1800 15950 1800
Wire Bus Line
	2550 1800 6350 1800
Wire Bus Line
	10050 1600 12600 1600
Wire Wire Line
	10450 2900 10150 2900
Entry Wire Line
	10050 2800 10150 2900
Wire Wire Line
	10450 3000 10150 3000
Entry Wire Line
	10050 2900 10150 3000
Wire Wire Line
	10450 3100 10150 3100
Entry Wire Line
	10050 3000 10150 3100
Wire Wire Line
	10450 3200 10150 3200
Entry Wire Line
	10050 3100 10150 3200
Wire Wire Line
	10450 3300 10150 3300
Entry Wire Line
	10050 3200 10150 3300
Wire Wire Line
	10450 3400 10150 3400
Entry Wire Line
	10050 3300 10150 3400
Wire Wire Line
	10450 3500 10150 3500
Entry Wire Line
	10050 3400 10150 3500
Wire Wire Line
	10450 3600 10150 3600
Entry Wire Line
	10050 3500 10150 3600
Wire Wire Line
	10450 3800 10150 3800
Entry Wire Line
	10050 3700 10150 3800
Wire Wire Line
	10450 3900 10150 3900
Entry Wire Line
	10050 3800 10150 3900
Wire Wire Line
	10450 4000 10150 4000
Entry Wire Line
	10050 3900 10150 4000
Wire Wire Line
	10450 4100 10150 4100
Entry Wire Line
	10050 4000 10150 4100
Wire Wire Line
	10450 4200 10150 4200
Entry Wire Line
	10050 4100 10150 4200
Wire Wire Line
	10450 4300 10150 4300
Entry Wire Line
	10050 4200 10150 4300
Wire Wire Line
	10450 4400 10150 4400
Entry Wire Line
	10050 4300 10150 4400
Wire Wire Line
	10450 4500 10150 4500
Entry Wire Line
	10050 4400 10150 4500
Wire Wire Line
	10450 4700 10150 4700
Entry Wire Line
	10050 4600 10150 4700
Wire Wire Line
	10450 4800 10150 4800
Entry Wire Line
	10050 4700 10150 4800
Wire Wire Line
	10450 4900 10150 4900
Entry Wire Line
	10050 4800 10150 4900
Wire Wire Line
	10450 5000 10150 5000
Entry Wire Line
	10050 4900 10150 5000
Wire Wire Line
	10450 5100 10150 5100
Entry Wire Line
	10050 5000 10150 5100
Wire Wire Line
	10450 5200 10150 5200
Entry Wire Line
	10050 5100 10150 5200
Wire Wire Line
	10450 5300 10150 5300
Entry Wire Line
	10050 5200 10150 5300
Wire Wire Line
	10450 5400 10150 5400
Entry Wire Line
	10050 5300 10150 5400
Wire Wire Line
	10450 5600 10150 5600
Entry Wire Line
	10050 5500 10150 5600
Wire Wire Line
	10450 5700 10150 5700
Entry Wire Line
	10050 5600 10150 5700
Wire Wire Line
	10450 5800 10150 5800
Entry Wire Line
	10050 5700 10150 5800
Wire Wire Line
	10450 5900 10150 5900
Entry Wire Line
	10050 5800 10150 5900
Wire Wire Line
	10450 6000 10150 6000
Entry Wire Line
	10050 5900 10150 6000
Wire Wire Line
	10450 6100 10150 6100
Entry Wire Line
	10050 6000 10150 6100
Wire Wire Line
	10450 6200 10150 6200
Entry Wire Line
	10050 6100 10150 6200
Wire Wire Line
	10450 6300 10150 6300
Entry Wire Line
	10050 6200 10150 6300
Wire Wire Line
	11050 6600 11050 6650
Wire Wire Line
	11050 6650 10150 6650
Entry Wire Line
	10050 6550 10150 6650
$Comp
L Device:Resonator_Small ZQ1
U 1 1 61B44BBB
P 12150 3200
F 0 "ZQ1" V 12150 3400 50  0000 C CNN
F 1 "Resonator_Small" V 12384 3150 50  0001 C CNN
F 2 "" H 12125 3200 50  0001 C CNN
F 3 "~" H 12125 3200 50  0001 C CNN
	1    12150 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12050 3100 11650 3100
Wire Wire Line
	12050 3300 11650 3300
Wire Wire Line
	12350 3200 12500 3200
Entry Wire Line
	12500 3200 12600 3300
Text Notes 11850 3300 0    50   ~ 0
8МГц
Text Notes 12300 3050 0    50   ~ 0
С1\n22нФ
Text Notes 12200 3550 0    50   ~ 0
С2\n22нФ
$Comp
L Device:Resonator_Small ZQ2
U 1 1 61B69FF1
P 3250 3350
F 0 "ZQ2" V 3250 3550 50  0000 C CNN
F 1 "Resonator_Small" V 3484 3300 50  0001 C CNN
F 2 "" H 3225 3350 50  0001 C CNN
F 3 "~" H 3225 3350 50  0001 C CNN
	1    3250 3350
	0    1    1    0   
$EndComp
Text Notes 3350 3450 0    50   ~ 0
8МГц
Text Notes 3100 3700 0    50   ~ 0
С2\n22нФ
Wire Wire Line
	3350 3250 3700 3250
Wire Wire Line
	3700 3450 3350 3450
Wire Wire Line
	3050 3350 2650 3350
Entry Wire Line
	2550 3250 2650 3350
Wire Wire Line
	4900 3050 6250 3050
Entry Wire Line
	6250 3050 6350 3150
Wire Wire Line
	4900 3150 6250 3150
Entry Wire Line
	6250 3150 6350 3250
Wire Wire Line
	4900 3250 6250 3250
Entry Wire Line
	6250 3250 6350 3350
Wire Wire Line
	4900 3350 6250 3350
Entry Wire Line
	6250 3350 6350 3450
Wire Wire Line
	4900 3450 6250 3450
Entry Wire Line
	6250 3450 6350 3550
Wire Wire Line
	4900 3550 6250 3550
Entry Wire Line
	6250 3550 6350 3650
Wire Wire Line
	4900 3650 6250 3650
Entry Wire Line
	6250 3650 6350 3750
Wire Wire Line
	4900 3750 6250 3750
Entry Wire Line
	6250 3750 6350 3850
Wire Wire Line
	4900 4050 6250 4050
Entry Wire Line
	6250 4050 6350 4150
Wire Wire Line
	4900 4150 6250 4150
Entry Wire Line
	6250 4150 6350 4250
Wire Wire Line
	4900 4250 6250 4250
Entry Wire Line
	6250 4250 6350 4350
Wire Wire Line
	4900 4850 6250 4850
Entry Wire Line
	6250 4850 6350 4950
Wire Wire Line
	4900 4950 6250 4950
Entry Wire Line
	6250 4950 6350 5050
Wire Wire Line
	4900 5050 6250 5050
Entry Wire Line
	6250 5050 6350 5150
Wire Wire Line
	4900 5150 6250 5150
Entry Wire Line
	6250 5150 6350 5250
Wire Wire Line
	4900 5250 6250 5250
Entry Wire Line
	6250 5250 6350 5350
Wire Wire Line
	4900 5350 6250 5350
Entry Wire Line
	6250 5350 6350 5450
Wire Wire Line
	4900 5450 6250 5450
Entry Wire Line
	6250 5450 6350 5550
Wire Wire Line
	4900 5550 6250 5550
Entry Wire Line
	6250 5550 6350 5650
Wire Wire Line
	4300 6750 4300 6850
Wire Wire Line
	4300 6850 2650 6850
Entry Wire Line
	2550 6750 2650 6850
Wire Wire Line
	4300 2750 4300 2700
Wire Wire Line
	4300 2700 2650 2700
Entry Wire Line
	2550 2600 2650 2700
Wire Wire Line
	11650 5700 12500 5700
Entry Wire Line
	12500 5700 12600 5800
Wire Wire Line
	11650 5800 12500 5800
Entry Wire Line
	12500 5800 12600 5900
Wire Wire Line
	14650 2900 14450 2900
Entry Wire Line
	14350 2800 14450 2900
Wire Wire Line
	14650 3000 14450 3000
Entry Wire Line
	14350 2900 14450 3000
Wire Wire Line
	14650 3100 14450 3100
Entry Wire Line
	14350 3000 14450 3100
Wire Wire Line
	14650 3200 14450 3200
Entry Wire Line
	14350 3100 14450 3200
Wire Wire Line
	14650 3300 14450 3300
Entry Wire Line
	14350 3200 14450 3300
Wire Wire Line
	13500 4200 13500 4350
Entry Wire Line
	13500 4350 13600 4450
Wire Wire Line
	13500 2600 12700 2600
Entry Wire Line
	12600 2500 12700 2600
Wire Wire Line
	7450 5450 6450 5450
Entry Wire Line
	6350 5350 6450 5450
$Comp
L Device:C C?
U 1 1 61C21B72
P 7200 4600
F 0 "C?" H 7315 4646 50  0000 L CNN
F 1 "1мкФ" H 7315 4555 50  0000 L CNN
F 2 "" H 7238 4450 50  0001 C CNN
F 3 "~" H 7200 4600 50  0001 C CNN
	1    7200 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61C22D12
P 9300 4600
F 0 "C?" H 9415 4646 50  0000 L CNN
F 1 "1мкФ" H 9415 4555 50  0000 L CNN
F 2 "" H 9338 4450 50  0001 C CNN
F 3 "~" H 9300 4600 50  0001 C CNN
	1    9300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4450 7450 4450
Wire Wire Line
	7450 4750 7200 4750
Wire Wire Line
	9050 4450 9300 4450
Wire Wire Line
	9300 4750 9050 4750
$Comp
L Device:C C?
U 1 1 61C509DA
P 9350 4950
F 0 "C?" V 9098 4950 50  0000 C CNN
F 1 "C" V 9189 4950 50  0000 C CNN
F 2 "" H 9388 4800 50  0001 C CNN
F 3 "~" H 9350 4950 50  0001 C CNN
	1    9350 4950
	0    1    1    0   
$EndComp
Entry Wire Line
	9950 4950 10050 5050
$Comp
L Device:C C?
U 1 1 61C5E6E2
P 9700 5250
F 0 "C?" V 9448 5250 50  0000 C CNN
F 1 "C" V 9539 5250 50  0000 C CNN
F 2 "" H 9738 5100 50  0001 C CNN
F 3 "~" H 9700 5250 50  0001 C CNN
	1    9700 5250
	0    1    1    0   
$EndComp
Entry Wire Line
	9950 5250 10050 5350
Wire Wire Line
	9050 5250 9550 5250
Wire Wire Line
	9500 4950 9950 4950
Wire Wire Line
	9050 4950 9200 4950
Wire Wire Line
	8250 1600 8250 1650
Wire Wire Line
	8250 6550 8250 6650
Entry Wire Line
	8250 6650 8350 6750
Entry Wire Line
	6350 4050 6450 4150
Wire Wire Line
	6450 4150 8250 4150
Entry Wire Line
	9950 1600 10050 1700
Wire Wire Line
	8250 1600 9950 1600
Wire Wire Line
	8250 3850 9950 3850
Entry Wire Line
	9950 3850 10050 3950
Wire Wire Line
	7550 1950 6450 1950
Entry Wire Line
	6350 1850 6450 1950
Wire Wire Line
	7550 2050 6450 2050
Entry Wire Line
	6350 1950 6450 2050
Wire Wire Line
	7550 2150 6450 2150
Entry Wire Line
	6350 2050 6450 2150
Wire Wire Line
	7550 2250 6450 2250
Entry Wire Line
	6350 2150 6450 2250
Wire Wire Line
	7550 2350 6450 2350
Entry Wire Line
	6350 2250 6450 2350
Wire Wire Line
	7550 2450 6450 2450
Entry Wire Line
	6350 2350 6450 2450
Wire Wire Line
	7550 2550 6450 2550
Entry Wire Line
	6350 2450 6450 2550
Wire Wire Line
	7550 2650 6450 2650
Entry Wire Line
	6350 2550 6450 2650
Wire Wire Line
	7550 2850 6450 2850
Entry Wire Line
	6350 2750 6450 2850
Wire Wire Line
	7550 2950 6450 2950
Entry Wire Line
	6350 2850 6450 2950
Wire Wire Line
	7550 3050 6450 3050
Entry Wire Line
	6350 2950 6450 3050
Wire Wire Line
	7550 3150 6450 3150
Entry Wire Line
	6350 3050 6450 3150
Wire Wire Line
	7550 3250 6450 3250
Entry Wire Line
	6350 3150 6450 3250
Wire Wire Line
	7550 3350 6450 3350
Entry Wire Line
	6350 3250 6450 3350
Wire Wire Line
	7550 3450 6450 3450
Entry Wire Line
	6350 3350 6450 3450
Wire Wire Line
	7550 3550 6450 3550
Entry Wire Line
	6350 3450 6450 3550
Wire Wire Line
	8950 3350 9950 3350
Entry Wire Line
	9950 3350 10050 3450
Wire Wire Line
	8950 3450 9950 3450
Entry Wire Line
	9950 3450 10050 3550
Wire Wire Line
	8950 3550 9950 3550
Entry Wire Line
	9950 3550 10050 3650
Wire Wire Line
	8950 2850 9950 2850
Entry Wire Line
	9950 2850 10050 2950
Wire Wire Line
	8950 1950 9950 1950
Entry Wire Line
	9950 1950 10050 2050
Wire Wire Line
	8950 2050 9950 2050
Entry Wire Line
	9950 2050 10050 2150
Wire Wire Line
	8950 2150 9950 2150
Entry Wire Line
	9950 2150 10050 2250
Wire Wire Line
	8950 2250 9950 2250
Entry Wire Line
	9950 2250 10050 2350
Entry Wire Line
	8700 10000 8800 10100
Wire Wire Line
	7800 10000 8700 10000
Entry Wire Line
	8700 9650 8800 9750
Wire Wire Line
	7800 9650 8700 9650
Entry Wire Line
	8700 9300 8800 9400
Wire Wire Line
	7800 9300 8700 9300
Entry Wire Line
	8700 8950 8800 9050
Wire Wire Line
	7800 8950 8700 8950
Entry Wire Line
	8700 10350 8800 10450
Wire Wire Line
	7800 10350 8700 10350
Wire Bus Line
	2550 10850 4200 10850
Wire Bus Line
	4200 8550 6850 8550
Wire Bus Line
	6850 10800 8800 10800
Wire Wire Line
	4400 9600 4300 9600
Entry Wire Line
	4200 9500 4300 9600
Wire Wire Line
	4400 9700 4300 9700
Entry Wire Line
	4200 9600 4300 9700
Wire Wire Line
	4400 9800 4300 9800
Entry Wire Line
	4200 9700 4300 9800
Wire Wire Line
	4400 9900 4300 9900
Entry Wire Line
	4200 9800 4300 9900
Wire Wire Line
	4400 10000 4300 10000
Entry Wire Line
	4200 9900 4300 10000
Wire Wire Line
	4400 10100 4300 10100
Entry Wire Line
	4200 10000 4300 10100
Wire Wire Line
	4400 10200 4300 10200
Entry Wire Line
	4200 10100 4300 10200
Wire Wire Line
	4400 10300 4300 10300
Entry Wire Line
	4200 10200 4300 10300
Wire Wire Line
	6600 10000 6750 10000
Entry Wire Line
	6750 10000 6850 10100
Wire Wire Line
	6600 10100 6750 10100
Entry Wire Line
	6750 10100 6850 10200
Wire Wire Line
	6600 10200 6750 10200
Entry Wire Line
	6750 10200 6850 10300
Wire Wire Line
	6600 10300 6750 10300
Entry Wire Line
	6750 10300 6850 10400
Wire Wire Line
	4050 8900 4100 8900
Entry Wire Line
	4100 8900 4200 9000
Wire Wire Line
	4050 9000 4100 9000
Entry Wire Line
	4100 9000 4200 9100
Wire Wire Line
	4050 9100 4100 9100
Entry Wire Line
	4100 9100 4200 9200
Wire Wire Line
	4050 9200 4100 9200
Entry Wire Line
	4100 9200 4200 9300
Wire Wire Line
	4050 8700 4100 8700
Entry Wire Line
	4100 8700 4200 8800
Wire Wire Line
	4050 9600 4100 9600
Entry Wire Line
	4100 9600 4200 9700
Wire Wire Line
	4050 9700 4100 9700
Entry Wire Line
	4100 9700 4200 9800
Wire Wire Line
	4050 9800 4100 9800
Entry Wire Line
	4100 9800 4200 9900
Wire Wire Line
	4050 9900 4100 9900
Entry Wire Line
	4100 9900 4200 10000
Wire Wire Line
	4050 10000 4100 10000
Entry Wire Line
	4100 10000 4200 10100
Wire Wire Line
	4050 10100 4100 10100
Entry Wire Line
	4100 10100 4200 10200
Wire Wire Line
	4050 10200 4100 10200
Entry Wire Line
	4100 10200 4200 10300
Wire Wire Line
	4050 10300 4100 10300
Entry Wire Line
	4100 10300 4200 10400
Wire Wire Line
	4050 10500 4100 10500
Entry Wire Line
	4100 10500 4200 10600
Entry Wire Line
	2550 8800 2650 8900
Entry Wire Line
	2550 9000 2650 9100
Wire Wire Line
	13000 2900 12700 2900
Entry Wire Line
	12600 2800 12700 2900
Wire Wire Line
	13000 3000 12700 3000
Entry Wire Line
	12600 2900 12700 3000
Wire Wire Line
	13000 3100 12700 3100
Entry Wire Line
	12600 3000 12700 3100
Wire Wire Line
	13000 3200 12700 3200
Entry Wire Line
	12600 3100 12700 3200
Wire Wire Line
	13000 3300 12700 3300
Entry Wire Line
	12600 3200 12700 3300
Wire Wire Line
	13000 3400 12700 3400
Entry Wire Line
	12600 3300 12700 3400
Wire Wire Line
	13000 3500 12700 3500
Entry Wire Line
	12600 3400 12700 3500
Wire Wire Line
	13000 3600 12700 3600
Entry Wire Line
	12600 3500 12700 3600
Wire Wire Line
	13000 3800 12700 3800
Entry Wire Line
	12600 3700 12700 3800
Wire Wire Line
	13000 3900 12700 3900
Entry Wire Line
	12600 3800 12700 3900
Entry Wire Line
	2550 2950 2650 3050
Wire Notes Line
	1800 6950 5450 6950
Wire Notes Line
	5450 6950 5450 1450
Wire Notes Line
	5450 1450 1800 1450
Wire Notes Line
	1800 1450 1800 6950
Wire Notes Line
	9500 3900 6850 3900
Wire Notes Line
	6850 3900 6850 7050
Wire Notes Line
	6850 7050 16150 7050
Wire Notes Line
	16150 7050 16150 950 
Wire Notes Line
	16150 950  9450 950 
Wire Notes Line
	9450 950  9450 3900
Text Notes 13800 6900 0    197  ~ 0
Получатель
Text Notes 10150 2900 0    50   ~ 0
D0
Text Notes 10150 3000 0    50   ~ 0
D1
Text Notes 10150 3100 0    50   ~ 0
D2
Text Notes 10150 3200 0    50   ~ 0
D3
Text Notes 10150 3300 0    50   ~ 0
D4
Text Notes 10150 3400 0    50   ~ 0
D5
Text Notes 10150 3500 0    50   ~ 0
D6
Text Notes 10150 3600 0    50   ~ 0
D7
Text Notes 10150 4700 0    50   ~ 0
A8
Text Notes 10150 4800 0    50   ~ 0
A9
Text Notes 10150 4900 0    50   ~ 0
A10
Text Notes 10150 5000 0    50   ~ 0
A11
Text Notes 10150 5100 0    50   ~ 0
A12
Text Notes 10150 5200 0    50   ~ 0
A13
Text Notes 10150 5300 0    50   ~ 0
A14
Text Notes 10150 5400 0    50   ~ 0
A15
Text Notes 10150 5600 0    50   ~ 0
BTN0
Text Notes 10150 5700 0    50   ~ 0
TXD
Text Notes 10150 5800 0    50   ~ 0
BTN1
Text Notes 10150 5900 0    50   ~ 0
BTN2
Text Notes 10150 6000 0    50   ~ 0
BTN3
Text Notes 10150 6100 0    50   ~ 0
BTN4
Text Notes 10150 6200 0    50   ~ 0
~WR
Text Notes 10150 6300 0    50   ~ 0
~RD
Text Notes 10150 6650 0    50   ~ 0
GND
Text Notes 10150 3800 0    50   ~ 0
DIO
Text Notes 10150 3900 0    50   ~ 0
TM_CLK
Text Notes 10150 4000 0    50   ~ 0
PING
Text Notes 10150 4100 0    50   ~ 0
PONG
Text Notes 10150 4200 0    50   ~ 0
~SS
Text Notes 10150 4300 0    50   ~ 0
MOSI\n
Text Notes 10150 4400 0    50   ~ 0
MISO
Text Notes 10150 4500 0    50   ~ 0
SCK_RC
Text Notes 11700 5700 0    50   ~ 0
LE
Text Notes 11700 5800 0    50   ~ 0
RCVD
Wire Wire Line
	11050 2600 10150 2600
Entry Wire Line
	10050 2500 10150 2600
Text Notes 10150 2600 0    50   ~ 0
VCC
Text Notes 6450 1950 0    50   ~ 0
THR1_0
Text Notes 6450 2050 0    50   ~ 0
THR1_1
Text Notes 6450 2150 0    50   ~ 0
THR1_2
Text Notes 6450 2250 0    50   ~ 0
THR1_3
Text Notes 6450 2350 0    50   ~ 0
THR1_4
Text Notes 6450 2450 0    50   ~ 0
THR1_5
Text Notes 6450 2550 0    50   ~ 0
THR1_6
Text Notes 6450 2650 0    50   ~ 0
THR1_7
Text Notes 6450 2850 0    50   ~ 0
THR2_0
Text Notes 6450 2950 0    50   ~ 0
THR2_1
Text Notes 6450 3050 0    50   ~ 0
THR2_2
Text Notes 6450 3150 0    50   ~ 0
THR2_3
Text Notes 6450 3250 0    50   ~ 0
THR2_4
Text Notes 6450 3350 0    50   ~ 0
THR2_5
Text Notes 6450 3450 0    50   ~ 0
THR2_6
Text Notes 6450 3550 0    50   ~ 0
THR2_7
Text Notes 9000 1950 0    50   ~ 0
SS
Text Notes 9000 2050 0    50   ~ 0
SCK_RC
Text Notes 9000 2150 0    50   ~ 0
MOSI
Text Notes 9000 2250 0    50   ~ 0
MISO
Wire Wire Line
	11650 2900 12500 2900
Entry Wire Line
	12500 2900 12600 3000
Text Notes 9000 2850 0    50   ~ 0
RST
Text Notes 11700 2900 0    50   ~ 0
RST
Wire Wire Line
	2650 3050 3700 3050
Text Notes 2650 2700 0    50   ~ 0
VCC
Text Notes 2650 3050 0    50   ~ 0
RST
Text Notes 2650 3350 0    50   ~ 0
GND
Text Notes 12400 3200 0    50   ~ 0
GND
Text Notes 12700 2900 0    50   ~ 0
D0
Text Notes 12700 3000 0    50   ~ 0
D1\n
Text Notes 12700 3100 0    50   ~ 0
D2
Text Notes 12700 3200 0    50   ~ 0
D3
Text Notes 12700 3300 0    50   ~ 0
D4
Text Notes 12700 3400 0    50   ~ 0
D5
Text Notes 12700 3500 0    50   ~ 0
D6
Text Notes 12700 3600 0    50   ~ 0
D7
Text Notes 12700 3800 0    50   ~ 0
LE
Text Notes 12700 3900 0    50   ~ 0
GND
Text Notes 13500 4350 1    50   ~ 0
GND
Text Notes 12850 2600 2    50   ~ 0
VCC
Text Notes 14200 2900 2    50   ~ 0
Q0/A8
Text Notes 14200 3000 2    50   ~ 0
Q1/A9
Text Notes 14250 3100 2    50   ~ 0
Q2/A10
Text Notes 14250 3200 2    50   ~ 0
Q3/A11
Text Notes 14250 3300 2    50   ~ 0
Q4/A12
Text Notes 14250 3400 2    50   ~ 0
Q5/A13
Text Notes 14250 3500 2    50   ~ 0
Q6/A14
Text Notes 14250 3600 2    50   ~ 0
Q7/A15
Text Notes 14600 3000 2    50   ~ 0
A15
Text Notes 14600 3100 2    50   ~ 0
GND
Text Notes 14550 3200 2    50   ~ 0
~WR
Text Notes 14550 3300 2    50   ~ 0
~RD
Text Notes 5250 3050 2    50   ~ 0
THR1_0
Text Notes 5250 3150 2    50   ~ 0
THR1_1
Text Notes 5250 3250 2    50   ~ 0
THR1_2
Text Notes 5250 3350 2    50   ~ 0
THR1_3
Text Notes 5250 3450 2    50   ~ 0
THR1_4
Text Notes 5250 3550 2    50   ~ 0
THR1_5
Text Notes 5250 3650 2    50   ~ 0
THR1_6
Text Notes 5250 3750 2    50   ~ 0
THR1_7
Text Notes 5250 4850 2    50   ~ 0
THR2_0
Text Notes 5250 4950 2    50   ~ 0
THR2_1
Text Notes 5250 5050 2    50   ~ 0
THR2_2
Text Notes 5250 5150 2    50   ~ 0
THR2_3
Text Notes 5250 5250 2    50   ~ 0
THR2_4
Text Notes 5250 5350 2    50   ~ 0
THR2_5
Text Notes 5250 5450 2    50   ~ 0
THR2_6
Text Notes 5250 5550 2    50   ~ 0
THR2_7
Text Notes 5000 4050 0    50   ~ 0
PONG
Text Notes 5000 4150 0    50   ~ 0
PING
Text Notes 5000 4250 0    50   ~ 0
RCVD
Text Notes 3900 6850 0    50   ~ 0
GND
Text Notes 2550 8850 0    50   ~ 0
TM_CLK
Text Notes 2550 9000 0    50   ~ 0
DIO
Text Notes 4000 8700 0    50   ~ 0
VCC
Text Notes 4050 9600 0    50   ~ 0
a
Text Notes 4050 9700 0    50   ~ 0
b
Text Notes 4050 9800 0    50   ~ 0
c
Text Notes 4050 9900 0    50   ~ 0
d
Text Notes 4050 10000 0    50   ~ 0
e
Text Notes 4050 10100 0    50   ~ 0
f
Text Notes 4050 10200 0    50   ~ 0
g
Text Notes 4050 10300 0    50   ~ 0
dp
Text Notes 4300 9600 0    50   ~ 0
a
Text Notes 4300 9700 0    50   ~ 0
b
Text Notes 4300 9800 0    50   ~ 0
c
Text Notes 4300 9900 0    50   ~ 0
d
Text Notes 4300 10000 0    50   ~ 0
e
Text Notes 4300 10100 0    50   ~ 0
f
Text Notes 4300 10200 0    50   ~ 0
g
Text Notes 4300 10300 0    50   ~ 0
dp
Text Notes 4000 10500 0    50   ~ 0
GND
Text Notes 4050 8900 0    50   ~ 0
G1
Text Notes 4050 9000 0    50   ~ 0
G2
Text Notes 4050 9100 0    50   ~ 0
G3
Text Notes 4050 9200 0    50   ~ 0
G4
Text Notes 6650 10000 0    50   ~ 0
G1
Text Notes 6650 10100 0    50   ~ 0
G2
Text Notes 6650 10200 0    50   ~ 0
G3
Text Notes 6650 10300 0    50   ~ 0
G4
Text Notes 7900 8950 0    50   ~ 0
BTN0
Text Notes 7900 9300 0    50   ~ 0
BTN1
Text Notes 7900 9650 0    50   ~ 0
BTN2
Text Notes 7900 10000 0    50   ~ 0
BTN3
Text Notes 7900 10350 0    50   ~ 0
BTN4
Text Notes 9100 7950 0    79   ~ 0
Назначение
Text Notes 8950 7950 0    79   ~ 0
#
Text Notes 8900 8100 0    79   ~ 0
1
Text Notes 8900 8250 0    79   ~ 0
2
Wire Bus Line
	9050 7800 9050 8300
Wire Bus Line
	8900 8300 10650 8300
Wire Bus Line
	8900 7950 10650 7950
Wire Bus Line
	8900 7800 10650 7800
Entry Wire Line
	8800 7950 8900 8050
Entry Wire Line
	8800 8100 8900 8200
Wire Bus Line
	8900 8150 10650 8150
Text Notes 9100 8100 0    79   ~ 0
VCC / +5В
Text Notes 9100 8300 0    79   ~ 0
GND
Wire Bus Line
	10650 7800 10650 8300
Text Notes 8750 1600 0    50   ~ 0
VCC
Text Notes 8600 3850 0    50   ~ 0
GND
Text Notes 7250 4150 0    50   ~ 0
VCC
Text Notes 7200 5450 0    50   ~ 0
TXD
Text Notes 8250 6700 0    50   ~ 0
GND
$Comp
L prinsip-rescue:MAX232-Interface_UART U5
U 1 1 618944AD
P 8250 5350
F 0 "U5" H 8250 6731 50  0000 C CNN
F 1 "MAX232" H 8250 6640 50  0000 C CNN
F 2 "" H 8300 4300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 8250 5450 50  0001 C CNN
	1    8250 5350
	1    0    0    -1  
$EndComp
Wire Bus Line
	9900 5500 9150 5500
Text Notes 9200 5450 0    50   ~ 0
#
Text Notes 9350 5450 0    50   ~ 0
Назначение
Text Notes 9200 5600 0    50   ~ 0
1
Text Notes 9350 5600 0    50   ~ 0
К RXD ПЭВМ
Entry Wire Line
	9050 5450 9150 5550
Wire Wire Line
	9850 5250 9950 5250
Wire Bus Line
	9900 5350 9900 5650
Wire Bus Line
	9300 5350 9300 5650
Wire Bus Line
	9150 5650 9900 5650
Wire Bus Line
	9150 5350 9900 5350
Wire Wire Line
	14650 3400 14450 3400
Wire Wire Line
	14650 3500 14450 3500
Entry Wire Line
	14350 3300 14450 3400
Entry Wire Line
	14350 3400 14450 3500
Text Notes 14450 3400 0    50   ~ 0
VCC
Text Notes 14450 3500 0    50   ~ 0
GND
Wire Bus Line
	8900 7800 8900 8300
$Comp
L prinsip-rescue:USBASP U?
U 1 1 61FBE46C
P 15300 2000
F 0 "U?" H 15325 2115 50  0001 C CNN
F 1 "USBAsp" H 15325 2023 50  0000 C CNN
F 2 "" H 15300 2000 50  0001 C CNN
F 3 "" H 15300 2000 50  0001 C CNN
	1    15300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	15600 2150 15800 2150
Wire Wire Line
	15600 2300 15800 2300
Wire Wire Line
	15600 2450 15800 2450
Entry Wire Line
	15850 2150 15950 2250
Entry Wire Line
	15850 2300 15950 2400
Entry Wire Line
	15850 2450 15950 2550
Entry Wire Line
	14350 2050 14450 2150
Wire Wire Line
	4900 4650 6250 4650
Entry Wire Line
	6250 4650 6350 4750
Wire Wire Line
	4900 4550 6250 4550
Entry Wire Line
	6250 4550 6350 4650
Wire Wire Line
	4900 4450 6250 4450
Entry Wire Line
	6250 4450 6350 4550
Text Notes 5000 4450 0    50   ~ 0
MOSI
Text Notes 5000 4550 0    50   ~ 0
MISO
Text Notes 5000 4650 0    50   ~ 0
SCK_TR
Text Notes 9000 3350 0    50   ~ 0
GND
Text Notes 9000 3450 0    50   ~ 0
GND
Text Notes 9000 3550 0    50   ~ 0
GND
Connection ~ 15800 2150
Wire Wire Line
	15800 2150 15850 2150
Connection ~ 15800 2300
Wire Wire Line
	15800 2300 15850 2300
Connection ~ 15800 2450
Wire Wire Line
	15800 2450 15850 2450
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 620DE963
P 14650 2300
F 0 "SW2" H 14700 2300 50  0000 C CNN
F 1 "SW_DPDT_x2" H 14650 2066 50  0001 C CNN
F 2 "" H 14650 2300 50  0001 C CNN
F 3 "~" H 14650 2300 50  0001 C CNN
	1    14650 2300
	-1   0    0    1   
$EndComp
Entry Wire Line
	14350 2100 14450 2200
Entry Wire Line
	14350 2300 14450 2400
Wire Wire Line
	14850 2600 14450 2600
Entry Wire Line
	14350 2500 14450 2600
Wire Wire Line
	14450 2150 14850 2150
Text Notes 14600 2250 0    50   ~ 0
SCK_RC
Text Notes 14550 2500 0    50   ~ 0
SCK_TR
Text Notes 14450 2150 0    50   ~ 0
MISO
Wire Wire Line
	14850 2450 14850 2600
Wire Bus Line
	9150 5350 9150 5650
Wire Bus Line
	6350 6750 10050 6750
Wire Bus Line
	12600 4450 14350 4450
Wire Bus Line
	15950 1800 15950 3000
Wire Bus Line
	6850 8550 6850 10800
Wire Bus Line
	2550 1800 2550 10850
Wire Bus Line
	8800 7400 8800 10800
Wire Bus Line
	12600 1600 12600 5950
Wire Bus Line
	4200 8550 4200 10850
Wire Bus Line
	14350 1800 14350 4450
Wire Bus Line
	6350 1800 6350 6750
Wire Bus Line
	10050 1600 10050 6750
Text Notes 14450 2600 0    50   ~ 0
RST
$EndSCHEMATC
