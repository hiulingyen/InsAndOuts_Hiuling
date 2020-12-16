int sensorPin = A0;
int sensorValue = 0;
const int buttonPin = 13;
int buttonState = 0;

void setup() {
  Serial.begin(9600);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);

  pinMode(buttonPin, INPUT);

}

void loop() {
  sensorValue = analogRead(sensorPin);
  sensorValue = sensorValue/4;
  delay(100);
  Serial.write(sensorValue);
  
  buttonState = digitalRead(buttonPin);
  delay(100);

  if (buttonState == LOW) {
     digitalWrite(6, HIGH);  //EYES
     digitalWrite(7, HIGH);  //EYES
   } 
   else if (buttonState == HIGH){
     digitalWrite(6, LOW);  //EYES
     digitalWrite(7, LOW);  //EYES
   }
   if (sensorValue>140){
    digitalWrite(2, HIGH);
    digitalWrite(3, LOW);  //SMILE
    digitalWrite(4, HIGH);  
    digitalWrite(5, LOW);  //SMILE
    }
   else{ 
   digitalWrite(2, HIGH);
   digitalWrite(3, HIGH);
  
   digitalWrite(4, HIGH);  //SMILE
   digitalWrite(5, HIGH);  //SMILE
    }
}
