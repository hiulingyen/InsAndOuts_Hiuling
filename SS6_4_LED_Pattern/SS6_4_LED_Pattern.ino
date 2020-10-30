
const int Button = 2;
int ButtonState = 0;

//Lights
const int L1 = 13;
const int L2 = 12;
const int L3 = 11;
const int L4 = 10;

void setup()
{
  pinMode(Button, INPUT);
  pinMode(L1, OUTPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, OUTPUT);
  pinMode(L4, OUTPUT);
}

void loop()
{
  ButtonState = digitalRead(Button);
  delay(10);

  if(ButtonState == HIGH)
  {
      Train();
      Random();

    } else
    {
      digitalWrite(L1, LOW);
      digitalWrite(L2, LOW);
      digitalWrite(L3, LOW);
      digitalWrite(L4, LOW);
    }
}

//LED Pattern 1
void Train()
{
      digitalWrite(L1, HIGH);
      digitalWrite(L2, LOW);
      digitalWrite(L3, LOW);
      digitalWrite(L4, LOW);
      delay(100);

      digitalWrite(L1, HIGH);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, LOW);
      digitalWrite(L4, LOW);
      delay(100);

      digitalWrite(L1, HIGH);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, LOW);
      delay(100);

      digitalWrite(L1, HIGH);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, HIGH);
      delay(100);

      //Down to off
      digitalWrite(L1, LOW);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, HIGH);
      delay(100);

      digitalWrite(L1, LOW);
      digitalWrite(L2, LOW);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, HIGH);
      delay(100);

      digitalWrite(L1, LOW);
      digitalWrite(L2, LOW);
      digitalWrite(L3, LOW);
      digitalWrite(L4, HIGH);
      delay(100);

      digitalWrite(L1, LOW);
      digitalWrite(L2, LOW);
      digitalWrite(L3, LOW);
      digitalWrite(L4, LOW);
      delay(100);
}

void Random()
{
      digitalWrite(L1, HIGH);
      digitalWrite(L2, LOW);
      digitalWrite(L3, LOW);
      digitalWrite(L4, LOW);
      delay(300);

      digitalWrite(L1, LOW);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, LOW);
      digitalWrite(L4, LOW);
      delay(300);

      digitalWrite(L1, LOW);
      digitalWrite(L2, LOW);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, LOW);
      delay(300);

      digitalWrite(L1, HIGH);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, HIGH);
      delay(300);

      digitalWrite(L1, LOW);
      digitalWrite(L2, LOW);
      digitalWrite(L3, LOW);
      digitalWrite(L4, HIGH);
      delay(300);

      digitalWrite(L1, LOW);
      digitalWrite(L2, LOW);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, LOW);
      delay(300);

      digitalWrite(L1, LOW);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, LOW);
      digitalWrite(L4, LOW);
      delay(300);

      digitalWrite(L1, HIGH);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, HIGH);
      delay(300);
      
      digitalWrite(L1, HIGH);
      digitalWrite(L2, LOW);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, LOW);
      delay(300);

      digitalWrite(L1, LOW);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, LOW);
      digitalWrite(L4, HIGH);
      delay(300);

      digitalWrite(L1, HIGH);
      digitalWrite(L2, LOW);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, LOW);
      delay(300);

      digitalWrite(L1, LOW);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, LOW);
      digitalWrite(L4, HIGH);
      delay(300);

      digitalWrite(L1, HIGH);
      digitalWrite(L2, LOW);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, LOW);
      delay(300);

      digitalWrite(L1, HIGH);
      digitalWrite(L2, HIGH);
      digitalWrite(L3, HIGH);
      digitalWrite(L4, HIGH);
      delay(300);

      digitalWrite(L1, LOW);
      digitalWrite(L2, LOW);
      digitalWrite(L3, LOW);
      digitalWrite(L4, LOW);
      delay(300);
}
