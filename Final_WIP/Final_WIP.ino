int sensorPin = A0;
int sensorValue = 0;

void setup() {
  Serial.begin(9600);
  pinMode(2, OUTPUT);
}

void loop() {
  sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue);

    if (sensorValue>500){
      digitalWrite(2, LOW);

    }
    else if (sensorValue>300){
      digitalWrite(2, HIGH);
    }
    else{
      digitalWrite(2, HIGH);

    }
}
