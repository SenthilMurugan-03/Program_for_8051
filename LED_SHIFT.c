#include<AT89s8252.h>
void wait(int n)
{
	 int i,j;
	for(i=0;i<n;i++){
		for( j=0;j<15;j++);
	}
}
void main()
{
	
	char res = 0X1;
	P0=0XFF;
	while(1)
	{	
		P0 = ~res;
		res = res<<1;
		wait(1);
		if(res == 0X0)
		{
			res = 0X1;
		}
	}
}


