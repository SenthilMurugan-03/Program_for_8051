#include<AT89s8252.h>

#define LED P0_0
	
void  main()
{
	TR0 = 0; /* stop the timer 0 */
	TMOD = ((TMOD&0xF0)|0x02); /* configure timer as mode 1 */
	TH0 = 0x9c;
	TL0 = 0x9c;
	TR0 = 1; /* start the timer 0 */
	while(1)
	{	
		char i = 0;
		for(i=0;i<10;i++){ /*mutliply by 10 to get 1000ms time */
			while(TF0 == 0){} /* generate 100ms */
			TF0 = 0;
			
		}
		LED = !LED; /* indicate the second changing */
	}	
}





