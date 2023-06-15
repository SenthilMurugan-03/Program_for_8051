#include<AT89s8252.h>
#define LED P2_4  /* connected at port p2.4 */
#define ON 0
#define OFF 1

void wait(int n)
{
 int i,j;
 for(i=0;i<n;i++)
 {
   for(j=0;j<n;j++)
   {}
 }
}
void main()
{
	int n = 5;
 	int i=0;
 	LED = OFF;
 	while(1){
	 	if(n>0){
			LED = ON;
			wait(2);
			LED = OFF;
			wait(2);
	 		n--;
	 	}
 	}
}


