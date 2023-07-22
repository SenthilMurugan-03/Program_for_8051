#include<AT89s8252.h>

#define LED1 P0_0  /* led for normal blink*/
#define SW1 P3_2  /* switch for interrupt 0 */
#define SW2 P3_3  /* switch for interrupt 1 */
#define LED2 P0_1  /* led for interrupt blink */
#define LED3 P0_2 /* led for interrupt blink */
#define SEG_DISP P1  

const char ar[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
char *p;

void interrupt_disable_all();
void interrupt_init(__bit ex);
void interrupt_type(__bit ex , __bit type);
void interrupt_set_priority(__bit in);
void interrupt_clr_priority(__bit in);
void wait();
char count =0 ; 

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

void interrupt_type(__bit e, __bit type)
{
	if(e == 0)
	{
		IT0 = type;
	}
	else if(e == 1)
	{
		IT1 = type;
	}
}

void led_toggle() __interrupt(0) /* ISR for  interrupt 0 (__interrupt(0) is mentioning its a ISR for interrupt 0)*/ 
{
	LED2 = !LED2;
	SEG_DISP = ar[0];
}

void led_toggle1() __interrupt(2) /* ISR for  interrupt 0 (__interrupt(0) is mentioning its a ISR for interrupt 0)*/ 
{
	LED3 = !LED3;
	SEG_DISP = ar[1];
}

void wait()
{
	char i=0;
	for(i=0;i<10;i++)
	{

	}
}

void interrupt_set_priority(__bit in)
{
	if(in == 0)
	{
		PX0 = 1;
	}
	else if(in==1)
	{
		PX1 = 1;
	}
}

void interrupt_clr_priority(__bit in)
{
	if(in == 0)
	{
		PX0 = 0;
	}
	else if(in==1)
	{
		PX1 = 0;
	}
}

void main()
{
	SEG_DISP =0xFF;
	interrupt_set_priority(1);
	interrupt_init(1);   /*configure the interrupts and it accepts interrupt as parameter */
      interrupt_type(1,0);  /* this method accepts  (interrupt , type (1 -> falling edge , 0 -> low level)) */
	interrupt_init(0);   /*configure the interrupts and it accepts interrupt as parameter */
      interrupt_type(0,0);
	SW1 = 1;
	SW2 = 1;
	while(1)
	{
		LED1 = 0;
		wait();
		LED1 = 1;
		wait();
	}
}



