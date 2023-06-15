#include<AT89s8252.h>
#define LED P2_4  /* connected at port p2.4 */
#define SWITCH P3_3 /* Switch connected at port pin p3.3 */
#define ON 0
#define OFF 1
#define INPUT 1  /* to configure port pin as input 1 logic must be written on port pin */
void wait(int);
void main()
{
 
 __bit status ;
 LED = OFF;
 SWITCH = INPUT; /*configure port pin connected to switch as input */
 while(1)
 {
  status = !SWITCH; 
  if(status == 1)
  {
   LED = ON;
   wait(2);
   LED = !LED ;
   wait(2);
   }
   else
   {
    LED = OFF;
   }
 }
}

void wait(int n)
{
 int i,j;
 for(i=0;i<n;i++)
 {
   for(j=0;j<n;j++)
   {}
 }
}