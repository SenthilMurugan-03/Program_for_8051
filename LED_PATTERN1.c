#include<AT89s8252.h>
/*const char data[4]={0X81,0X042,0X24,0X18};*/
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
		int a =0X80;
		int b = 0X01;
		for(i=0;i<4;i++)
		{
			P0 = ~(a+b);
			a=a/2;
			b=b*2;
			/*P0 = ~data[i];*/
			wait(1);
		}
	}
}
