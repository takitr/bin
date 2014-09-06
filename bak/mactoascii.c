/*************************************************************************
    > File Name: main.c
    > Author: zhaoxh
    > Mail: xinhai.zhao@163.com 
    > Created Time: Sat 06 Sep 2014 02:27:15 PM CST
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(int argc,char** argv)
{
	if(argc != 2)
	{
		printf("Usage: %s mac_addr\n",argv[0]);
		exit(-1);
	}
	int leng = strlen(argv[1]);
	if(leng == 17)
	{
		char mac[255];

		bzero(mac,sizeof(mac));
		strcpy(mac,argv[1]);
	
		int num1 = strlen(mac);

		int i ;
		for(i = 0;i < num1;i++)
		{
			printf("%x",mac[i]);
		}
			printf("\n");
	}
	else if(leng == 34) 
	{
		char str[255];

		bzero(str,sizeof(str));
		strcpy(str,argv[1]);
		
		int num2 = strlen(str);
		char newstr[10];
		int j;
		for(j=0; j < num2+1;j+=2)
		{
			bzero(newstr,sizeof(newstr));
			sprintf(newstr,"%c%c",str[j],str[j+1]);
			printf("%c",(int)strtoll(newstr,NULL,16));
		}
			printf("\n");

	}
	else 
	{
		printf("You input invaid mac addr !!!!\n");
		printf("Usage : %s xx:xx:xx:xx:xx:xx  \n",argv[0]);
	}

	return 0;
}
