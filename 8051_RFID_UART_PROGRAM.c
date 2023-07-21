#include<AT89s8252.h>

char msg[]="";
char *p = msg;

void serial_init()
{
	TR1 = 0;
	TMOD = (TMOD & 0x0F) | 0x20;
	TH1 = 0xFD;
	TL1 = 0xFD;
	SCON = 0x50;
	PCON = (PCON & 0x7F) ;
	TR1 = 1;
}

void read_serial()
{
	RI = 0;
	while(RI == 0);
	RI = 0;
	while(SBUF != '$')
	{
		*p = SBUF;
		*p++;
		while(RI == 0);
		RI = 0;
	}
	*p = '\0';
	p = msg;	
}

void print_serial(char *m)
{
	while(*m != '\0')
	{
		SBUF = *m;
		*m++;
		while(TI == 0);
		TI = 0;
	}	
}

void main()
{
	serial_init();
	while(1)
	{
		read_serial();
		print_serial("\nMessage Received : \n");
		print_serial(msg);
		
	}
}
