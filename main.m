#import<Foundation/Foundation.h>
#import "bill.h"


int main()
{
   NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
   Bill *bill = [[Bill alloc]init];
   float amount ;
   char str[256];
   NSLog(@"Enter Type.(finished/grocery): ");
   scanf("%s",str);
   NSLog(@"Enter the amount: ");
   scanf("%f",&amount);
   NSString *type = [NSString stringWithUTF8String:str];
   [bill setType:type];
   [bill setAmount:amount];
   [bill setTotalTax:0.0];
   [bill taxCalculator:bill];
   [bill release];
   [pool release];
return 0;
}