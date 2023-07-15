#include<AT89s8252.h>

#define LCD P3
#define RS P0_0
#define RW P0_1
#define EN P0_2
#define HIGH 1
#define LOW 0

int lcd_busy()
{

	__bit f = 0 ;
	P3 = 0xFF;
	RS = LOW;
	RW = HIGH;
	EN = HIGH;
	EN = LOW;
	f = P3>>7;
	RW = LOW;
	return f;
}

void lcd_cmd(char ch)
{
	RW = LOW;
	RS = LOW;
	P3 = ch;
	EN = HIGH;
	EN = LOW;
	while(lcd_busy()== 1)
	{

	}
}

void lcd_data(char ch)
{
	RW = LOW;
	RS = HIGH;
	P3 = ch;
	EN = HIGH;
	EN = LOW;
	RS = LOW;
	while(lcd_busy() == 1)
	{

	}
}

void lcd_init()
{
	lcd_cmd(0x38); /* command for func set DL = 1 N = 1(2lines)*/
	lcd_cmd(0x0F); /*command for cursor on blink on D = 1 , C = 1 , B = 1*/
	lcd_cmd(0x01); /*command for clear screen*/
	lcd_cmd(0x80); /*command for select address*/
}

void main()
{
	char Name[]="SENTHIL";
	char i=0;
	P1_0 = 1;
	EN = LOW;
	
	while(lcd_busy() == 1)
	{
		P1_0 = 0;
	}
	RW = 0 ;
	RS = 0;
	lcd_init();
	while(Name[i]!='\0')
	{
		lcd_data(Name[i]);
		i++;
	}
	while(1)
	{
		lcd_cmd(0x08);
		lcd_cmd(0x0c);
	}
	
}

