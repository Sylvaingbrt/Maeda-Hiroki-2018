void upscale(){
  
  tone(13,131,100);
  delay(100);
  delay(100);
  tone(13,147,100);
  delay(100);
  tone(13,165,100);
  delay(100);
  tone(13,175,100);
  delay(100);
  tone(13,196,100);
  delay(100);
  tone(13,220,100);
  delay(100);
  tone(13,247,100);
  delay(100);
  tone(13,262,100);
  
  }
void downscale(){
  
  tone(13,262,100);
  delay(100);
  tone(13,247,100);
  delay(100);
  tone(13,220,100);
  delay(100);
  tone(13,196,100);
  delay(100);
  tone(13,175,100);
  delay(100);
  tone(13,165,100);
  delay(100);
  tone(13,147,100);
  delay(100);
  tone(13,131,100);
  }
  int mode;
  int state=0;
void setup() {
  // put your setup code here, to run once:
  mode=0;
  pinMode(7,INPUT);
  Serial.begin(38400);
  pinMode(2,OUTPUT);
  digitalWrite(2,HIGH);  
}

void loop() {
  state = digitalRead(7);
  Serial.println(mode+state);
  if(mode == 0){
    upscale();
    }else{
      downscale();
     }
      if(state==1){
        if(mode==1){
          mode=0;
          }else{
            mode=1;
            }
        }
  // put your main code here, to run repeatedly:

}
