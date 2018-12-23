int i;
int count;
int ArState = 0;
int SA=0;
int mode=0;
int inByte;
int state=0;
int hz[]={131,147,165,175,196,220,247,262};
String order; //
String neworder;
void buzzer(int hz){//to ring
  tone (13,hz,100);
  delay(1000);
  }
void upscale(int hz[]){//upscale 
  for(i=0;hz[i]!='\0';i++){
  buzzer(hz[i]);
  }
  }
void downscale(int hz[]){ // downscale
  count = 0;
  while(hz[count]!='\0'){}
  for(i=count;i>=0;i--){
    buzzer(hz[i]);
    }
  }
void scale(int mode,int hz[]){ //scale mode chenge (upscale or downscale)
  if(mode == 0){
    upscale(hz);
    }else{
      downscale(hz);
      }
  }
  
void lighting(){
  digitalWrite(2,HIGH);
  delay(500);
  }
void flashing(){
  digitalWrite(2,HIGH);
  delay(500);
  digitalWrite(2,LOW);
  delay(500);
  }
  
void LED(int mode){ //LED mode change (lighting or flashing)
  if(mode==0){
    lighting();
    }else{
      flashing();
      }
  }

void setup() {
  // put your setup code here, to run once:
 pinMode(2,OUTPUT);
 pinMode(4,INPUT);
 pinMode(0,OUTPUT);
// pinMode(8,OUTPUT);
 //digitalWrite(8,LOW);
 digitalWrite(0,HIGH);
 Serial.begin(9600);
 while(!Serial){//serial準備
  }
  Serial.print("A\n");
  
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(10);
  SA = Serial.available();
  if(SA>0){
    inByte = Serial.read();
    if(inByte==49){
      neworder="LED";
      }else if(inByte==50){
        neworder="buzzer";
        }else{
          neworder="";
          }
    if(!order.equals(neworder)){//if different readString and order,init mode
        mode=0;
      }
    
    
    order=neworder;
  }
  
  
  
  
    if(order.equals("LED")){
        LED(mode);         //LED function. mode is lighting(mode=0) or Flashing(mode=1)
      }else if(order.equals("buzzer")){
        digitalWrite(2,LOW); //LED turn off
        scale(mode,hz);       //buzzer function. mode is upscale(mode=0) or downscale(mode=1)
        }

  state = digitalRead(4);
  //delay(500);
  if(state==1){ //mode change from button signal
    if(mode == 0 ){
      mode =1;
      }else {
        mode =0;
        }
    }
   // digitalWrite(8,HIGH);
}
