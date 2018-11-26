void setup() {
  // put your setup code here, to run once:
pinMode(6,OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  
  int i;

  for(i=0;i<10;i++){
   analogWrite(6,255*i*0.1); 
   delay(500);
    }
      for(i=10;i>0;i--){
   analogWrite(6,255*i*0.1); 
   delay(500);
    }

/*
for(i=0;i<2*3.14;i+=0.01){
  analogWrite(6,255*abs(sin(i*3.14)));
  delay(10);
  }
*/
}
