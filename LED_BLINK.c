#include<AT89s8252.h>
void wait(int);
void main(){
	P2_0 = 0 ;
	while(1){
		P2_0 = 1;
		wait(2);
		P2_0 = !P2_0;
		wait(2);
		P2_1 = 1;
		wait(2);
		P2_1 = 0;
		wait(2);
		P2_2 = 1;
		wait(2);
		P2_2 = 0;
		wait(2);
		P2_3 = 1;
		wait(2);
		P2_3 = 0;
		wait(2);
		P2_4 = 1;
		wait(2);
		P2_4 = 0;
		wait(2);
		P2_5 = 1;
		wait(2);
		P2_5 = 0;
		wait(2);
		P2_6 = 1;
		wait(2);
		P2_6 = 0;
		wait(2);
		P2_7= 1;
		wait(2);
		P2_7 = 0;
		wait(2);
		P2_0=P2_1=P2_2=P2_3=P2_4=P2_5=P2_6=P2_7=0;
	}
}
void wait(int n){
	int i,j;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++);
	}
}
