  int ArState =0;
  int SA=0; 
  int inByte=0;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  while(!Serial){
    }
    Serial.print("A\n");

  pinMode(2,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(6,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

         delay(10);
         SA = Serial.available();
         if(SA>0){
            inByte = Serial.read();

            switch(inByte){
              case 48:
                digitalWrite(2,LOW);
                digitalWrite(4,LOW);
                digitalWrite(6,LOW);
              case 49:
                digitalWrite(2,HIGH);
                digitalWrite(4,LOW);
                digitalWrite(6,LOW);
                break;
               case 50:
                digitalWrite(2,LOW);
                digitalWrite(4,HIGH);
                digitalWrite(6,LOW);
                break;
               case 51:
                digitalWrite(2,LOW);
                digitalWrite(4,LOW);
                digitalWrite(6,HIGH);
              }
            
          }
}
