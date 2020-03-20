//loop1

unsigned long nowtime;
 float x=10;
void setup()
{   Serial.begin(9600); 
  
    
}
void loop()
{
Serial.println(nowtime);
Serial.println(x);
nowtime=millis();
while(millis()-nowtime<1)
 {
  x=x+1;
 }
}

//loop2
unsigned long nowtime;
 float x=10;
void setup()
{   Serial.begin(9600); 
  
    
}
void loop()
{
nowtime=millis();
while(millis()-nowtime<1)
 {
  x=x+1;
 }
}

//loop3
unsigned long nowtime;
 float x=10,y=6,z;
void setup()
{   Serial.begin(9600); 
  
    
}
void loop()
{
nowtime=millis();
while(millis()-nowtime<1)
 {
  y=x+1;
 }
}

//loop4
unsigned long nowtime;
 float x=10,y=6,z;
void setup()
{   Serial.begin(9600); 
  
    
}
void loop()
{

}

//loop5
unsigned long nowtime;
 float x=10,y=6,z;
void setup()
{   Serial.begin(9600); 
  
    
}
void loop()
{x=x+1;
y=y*y;

}