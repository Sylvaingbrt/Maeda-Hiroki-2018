int brightness = 0;    // how bright the LED is
int fadeAmount = 5;    // how many points to fade the LED by

void setup() {
  // put your setup code here, to run once:
  pinMode(6, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:

//  int i;
//
//  for(i=0;i<10;i++){
//   analogWrite(6,255*i*0.1);
//   delay(500);
//    }
//      for(i=10;i>0;i--){
//   analogWrite(6,255*i*0.1);
//   delay(500);
//    }

//コードがいいです。次は他の方法です。次回にしてみてください。

  analogWrite(led, brightness);

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade:
  if (brightness <= 0 || brightness >= 255) {
    fadeAmount = -fadeAmount;
  }
  // wait for 30 milliseconds to see the dimming effect
  delay(30);
}
