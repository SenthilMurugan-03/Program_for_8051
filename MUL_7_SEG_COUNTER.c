#include<AT89s8252.h>
const char ar[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
char t=1;
char h=1;
char th=1;

void wait(int n)
{
	char i,j;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++);
	}
}
void TensIn()
{
	P0 = 0xFF;
	P0 = 0x0D;
	P1 = ar[t];
	t++;	
}
void TensClr()
{
	P0 = 0x0D;
	P1 = ar[0];
	P0 = 0x0E;	
}
void HunIn()
{
	P0 = 0x0B;
	P1 = ar[h];
	P0 = 0x0D;
	h++;
}
void HunClr()
{
	P0 = 0x0B;
	P1 = ar[0];
	P0 = 0x0D;
}
void ThouIn()
{
	P0 = 0x07;
	P1 = ar[th];
	P0 = 0x0B;
	th++;
}
void ThouClr()
{
	P0 = 0x07;
	P1 = ar[0];
	P0 = 0x0B;
}
void main()
{
char i;
		
		
	while(1)
	{
		
		for(i=0;i<10;i++){
			P0 = 0x0E;
			P1 = ar[i];
			wait(2);
		}
		if(i==10)
		{
			TensIn();
		}	
		if(t==7)
		{
		t=0;
			TensClr();
			HunIn();
		}
		if(h==10)
		{
		h=0;
			HunClr();
			ThouIn();
			
		}
	}
}









/*#include<AT89s8252.h>
const char ar[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void wait(int n)
{
	char i,j;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++);
	}
}
void main()
{
	char t=1,h=1,th=1;
	while(1)
	{
	char i;
		
		for(i=0;i<10;i++){
			P0 = 0x0E;
			P1 = ar[i];
			wait(2);
		}
		if(i==10){
			P0 = 0x0D;
			P1 = ar[t];
			P0 = 0xFF;
			t++;
		}
		if(t==10)
		{	
			t=1;
			P0 = 0x0D;
			P1 = ar[0];
			P0 = 0xFF;
			
			P0 = 0x0B;
			P1 = ar[h];
			P0 = 0xFF;
			h++;
		}
		if(h==10)
		{
			h=1;
			P0 = 0x0B;
			P1 = ar[0];
			P0 = 0xFF; 
			
			P0 = 0x07;
			P1 = ar[th];
			P0 = 0xFF;
			th++;
		}		
			
	}
}
*/







