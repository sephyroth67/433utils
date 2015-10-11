/*
  RF_Sniffer
  
  Hacked from http://code.google.com/p/rc-switch/
  
  by @justy to provide a handy RF code sniffer
*/

#include "RCSwitch.h"
#include <stdlib.h>
#include <stdio.h>
     
     
RCSwitch mySwitch;
 


int main(int argc, char *argv[]) {
  
     // This pin is not the first pin on the RPi GPIO header!
     // Consult https://projects.drogon.net/raspberry-pi/wiringpi/pins/
     // for more information.
     int PIN = 2;
     int compteur ;

     if(wiringPiSetup() == -1)
       return 0;

     mySwitch = RCSwitch();
     mySwitch.enableReceive(PIN);  // Receiver on inerrupt 0 => that is pin #2
     

    
     
for (compteur=1; compteur<900; compteur++)
{
      delay(20); 

      if (mySwitch.available()) {
    
        int value = mySwitch.getReceivedValue();
    
        if (value == 0) {
          printf("Unknown encoding\n");
        } else {    
   
	   
	   printf("Type: " );
	   printf("\n");
          printf("%i\n", mySwitch.getReceivedProtocol() );
	   printf("\n");
	   printf("Longueur: " );
	   printf("\n");
          printf("%i\n", mySwitch.getReceivedBitlength() );
	   printf("\n");
	   printf("Protocole: " );
	   printf("\n");
	   printf("Send" );
	   printf("%i\n", mySwitch.getReceivedDelay() );
	   printf("\n");
	   printf("Code: " );
	   printf("\n");
          printf("%i\n", mySwitch.getReceivedValue() );
          return 0;
}
    
    mySwitch.resetAvailable();
    
      }

      
  
  }

  
          printf("Délai dépassé");
	   printf("\n");
	   printf("Veuillez réessayer");
  	   return 0;



}

