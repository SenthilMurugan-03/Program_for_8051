#include<AT89s8252.h>

void main()
{
	P0 = 0xFF;
	while(1)
	{
		char a = P0;
		P0 = (a<<4)|0X0F;
		
	}
}



