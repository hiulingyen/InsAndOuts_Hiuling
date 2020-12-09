int sensorPin = A0;
int sensorValue = 0;

void setup() {
  Serial.begin(9600);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
}

void loop() {
  sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue);

    if (sensorValue>500){
    digitalWrite(2, HIGH);
    digitalWrite(3, HIGH);
    
    digitalWrite(4, HIGH);
    digitalWrite(5, HIGH);
    digitalWrite(6, HIGH);
    digitalWrite(7, HIGH);
    
    digitalWrite(8, LOW);
    digitalWrite(9, LOW);

    }
    else{ 
    digitalWrite(2, HIGH);
    digitalWrite(3, HIGH);
    
    digitalWrite(4, HIGH);
    digitalWrite(5, HIGH);
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
    
    digitalWrite(8, HIGH);
    digitalWrite(9, HIGH);

    }
}
