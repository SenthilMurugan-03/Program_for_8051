#include<AT89s8252.h>
const char ar[8]={0X6D,0X79,0X37,0X78,0X76,0X30,0X38};
void wait(int n)
{
	char i ,j;
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++);
	}
}
void main()
{
	P0 = 0X00;
	while(1)
	{
		char i;
		for(i = 0 ;i < 8;i++){
			P0 = ar[i];
			wait(2);
		}
	}
}




