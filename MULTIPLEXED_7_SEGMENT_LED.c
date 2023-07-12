#include<AT89s8252.h>
const char ar[10]={0xA4,0xC0,0xA4,0xB0};
const char sel[] = {0x07,0x0B,0x0D,0x0E};
void wait(int n)
{
	char i,j;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++);
	}
}
void main()
{
	while(1)
	{
	char i;
		for(i=0;i<4;i++){
			P1 = ar[i];
			P0 = sel[i];
			P0 = 0xFF;
		}
	}
}






