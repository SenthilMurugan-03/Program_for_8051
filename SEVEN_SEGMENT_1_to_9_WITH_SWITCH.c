#include<AT89s8252.h>
const char ar[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void main()
{
	P1 = P0 = 0XFF;
	while(1)
	{
		char a = ~P1,d=a,c=0;
		char b = 1,n;
		if(a==0x0){
			P0=0xFF;
		}
		else{
			while(1)
			{
				if(a == 0)
				{
					break;
				}
				else{
					c++;
					a=a>>1;
				}
			}
			n=c-1;
			while(n)
			{
				b=b*2;
				n--;
			}
			if(b==d){
			
				P0=ar[c];
			}
			else
			{
				P0 = 0xFF;
			}
		}
	}
}





