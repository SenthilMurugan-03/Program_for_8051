#include<AT89s8252.h>
const char data[8]={0X01,0X02,0X04,0X08,0X10,0X20,0X40,0X80};
void wait(int n)
{
	 int i,j;
	for(i=0;i<n;i++)
	{
		for( j=0;j<15;j++);
	}
}
void main()
{
	
	char i;
	P0 = 0XFF;
	while(1)
	{
		for(i=0;i<8;i++)
		{
			P0 = ~data[i];
			wait(1);
		}
	}
}