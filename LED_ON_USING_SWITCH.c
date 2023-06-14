#include<AT89s8252.h>
#define LED P2_4  /* connected at port p2.4 */
#define SWITCH P3_3 /* Switch connected at port pin p3.3 */
#define ON 0
#define OFF 1
#define INPUT 1 /* to configure port pin as input 1 logic must be written on port pin */
void main(){
	__bit status; /*intialize a bit variable */
	LED = OFF;  /*turn off the LED */
	SWITCH = INPUT; /*configure port pin connected to switch as input */
	while(1){
		status = SWITCH; /*read the switch and store the logic to a variable */
		LED = status ;	/*write the logic to the LED */
	}
}