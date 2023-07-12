#include<AT89s8252.h>
const char row[]={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
const char col[]={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};

void main()
{
	/*struct LED led[8];
	for(i=0;i<8;i++)
	{
		led[i].row=ro[i];
		led[i].col=ro[i];
	}*/
	while(1){
		char i,j;
		for(i=0;i<8;i++)
		{
			for(j=0;j<8;j++)
			{
			if(i==j || i+j == 7){
				P1 = row[i];
				P0 = col[j];
				}
				
			}
		}
	}
}