



#include <Servo.h>
#include <Stepper.h>
/ / Definimos los pines de entrada de los potenciómetros const int pot1Pin = A0;
const int pot2Pin = A1;
const int pot3Pin = A2;
const int pot4Pin = A3;
const int pot5Pin = A4;
const int pot6Pin = A5;
/ / Creamos los objetos servo para cada servo motor Servo servo1;
Servo servo2;
Servo servo3;
Servo servo4;
Servo servo5;
/ / Creamos el objeto stepper para el motor paso a paso Stepper stepper(2048, 8, 10, 9, 11);
void setup() { / / Inicializamos los objetos servo servo1.attach(2);
servo2.attach(3);
servo3.attach(4);
servo4.attach(5);
servo5.attach(6);
/ / Inicializamos la comunicación serial Serial.begin(9600);
} void loop() { / / Leemos los valores de los potenciómetros int pot1Val = analogRead(pot1Pin);
int pot2Val = analogRead(pot2Pin);
int pot3Val = analogRead(pot3Pin);
int pot4Val = analogRead(pot4Pin);
int pot5Val = analogRead(pot5Pin);
int pot6Val = analogRead(pot6Pin);
/ / Convertimos los valores de los potenciómetros en ángulos para los servos int servo1Angle = map(pot1Val, 0, 1023, 0, 180);
int servo2Angle = map(pot2Val, 0, 1023, 0, 180);
int servo3Angle = map(pot3Val, 0, 1023, 0, 180);
int servo4Angle = map(pot4Val, 0, 1023, 0, 180);
int servo5Angle = map(pot5Val, 0, 1023, 0, 180);
/ / Movemos los servos a las posiciones indicadas por los potenciómetros servo1.write(servo1Angle);
servo2.write(servo2Angle);
servo3.write(servo3Angle);  
servo4.write(servo4Angle);
servo5.write(servo5Angle);
/ / Convertimos el valor del potenciómetro del motor paso a paso en pasos int stepperSteps = map(pot6Val, 0, 1023, 0, 2048);
/ / Movemos el motor paso a paso al número de pasos indicado por el potenciómetro stepper.setSpeed(500);
stepper.step(stepperSteps);
/ / Mostramos los valores de los potenciómetros por la comunicación serial Serial.print("Pot1: ");
Serial.print(pot1Val);
Serial.print("  Pot2: ");
Serial.print(pot2Val);
Serial.print("  Pot3: ");
Serial.print(pot3Val);
Serial.print("  Pot4: ");
Serial.print(pot4Val);
Serial.print("  Pot5: ");
Serial.print(pot5Val);
Serial.print("  Pot6: ");
Serial.println(pot6Val);
delay(100);