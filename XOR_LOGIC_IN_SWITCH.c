#include<AT89s8252.h>
#define SW1 P2_0
#define SW2 P2_1
#define LED P1_0
#define INPUT 1
#define ON 0
#define OFF 1
void main()
{
	__bit st1;
	__bit st2;
	LED = 1;
	SW1 = INPUT;
	SW2 = INPUT;
	while(1)
	{
		st1 = !SW1;
		st2 = !SW2;
		LED = !(st1 ^ st2);
		
	}
}
