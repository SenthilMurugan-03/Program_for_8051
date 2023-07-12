#include<AT89s8252.h>
#define SW P0
void main()
{
	char l,u,s;
	SW = 0xFF;
	P1_0 = 1;
	while(1){
		s=~SW;
		l=0x0F&(s);
		u=(s)>>4;
		if(l<=0x09 && u<=0x09)
			P1_0 = 0;
		else
			P1_0 = 1;
		
	}
	
}







