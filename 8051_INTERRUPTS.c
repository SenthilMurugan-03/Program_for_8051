#include<AT89s8252.h>

#define LED1 P0_0  /* led for normal blink*/
#define SW P3_2  /* switch for interrupt 0 */
#define LED2 P0_1  /* led for interrupt blink */

void interrupt_disable_all();
void interrupt_init(__bit ex);
void interrupt_type(__bit ex , __bit type);
void led_toggle() __intterupt(0);
void wait();


void interrupt_disable_all()
{
	EA = 0;
}

void interrupt_init(__bit ex)
{
	EA = 1;
	if(ex == 0)
	{
		EX0 = 1;
	}
	else
	{
		EX1 = 1;
	}
}

void interrupt_type(__bit ex , __bit type)
{
	if(e == 0)
	{
		ET0 = type;
	}
	else
	{
		ET1 = type;
	}
}

void led_toggle() __interrupt(0) /* ISR for  interrupt 0 (__interrupt(0) is mentioning its a ISR for interrupt 0)*/ 
{
	LED2 = 0;
	LED2 = !LED2;
}

void wait()
{
	char i=0;
	for(i=0;i<1;i++)
	{

	}
}

void main()
{
	interrupt_init(0);   /*configure the interrupts and it accepts interrupt as parameter */
      interrupt_type(0,0);  /* this method accepts  (interrupt , type (1 -> falling edge , 0 -> low level)) */
	SW = 1;
	while(1)
	{
		LED1 = 0;
		wait();
		LED1 = 1;
		wait();
	}
}


