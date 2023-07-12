#include<AT89s8252.h>
const char opp[]={0x00,0x20,0x60,0x40,0xC0,0xE0,0xA0,0x80};
int main()
{
	char ip;
	char op;
	char ind ;
	P0 = 0xFF;
	while(1)
	{
		int i,j;
		ind = (~P0) & 0x07;
		ip = P0 & 0x07;
		P0 = (~opp[ind] & 0xE0 )+ip;
		
		/*op = (opp[ind]) & 0xE0;
		P0 = ~(ip + op);
		for(i=0;i<5;i++){
			for( j=0;j<2;j++);
		}*/
		
	}
}