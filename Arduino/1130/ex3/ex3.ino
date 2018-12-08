int brightness = 0;
int fadeAmount = 5;
int state = 0;
int mode=1;
void setup() {
  // put your setup code here, to run once:
pinMode(6,OUTPUT);
pinMode(4,OUTPUT);
//digitalWrite(6,HIGH);
pinMode(8,INPUT);
pinMode(11,OUTPUT);
Serial.begin(38400);
}

void loop() {
  // put your main code here, to run repeatedly:
  //button
  
  digitalWrite(4,HIGH);
  state = digitalRead(8);
  Serial.println(mode);

  //LED
  if(state==1){
      delay(500);
      if(mode==2){
        mode=0;
        }else{
          mode++;
          }
        }
    switch(mode){
      case 0:digitalWrite(6,LOW);
            break;
      case 1:digitalWrite(6,HIGH);
            break;
      case 2:

      analogWrite(6,brightness);
      brightness += fadeAmount;

  if(brightness<=0||brightness>=255){
    fadeAmount = -fadeAmount;
    }
    
    break;
    case 3 :tone(11,131,10);
    delay(1000);
    }
delay(30);
}
