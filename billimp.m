#import<Foundation/Foundation.h>
#import "bill.h"

@implementation Bill
@synthesize type,amount,totalTax;
-(void)calculateVat
{
totalTax = totalTax+amount*0.08;
}

- (void)calculateKst
{
  totalTax = totalTax+amount*0.14;
}

- (void)calculateCst
{
   totalTax = totalTax+amount*0.04;

}
-(void)taxCalculator:(Bill*) bill
{
   NSString *type1=[[NSString alloc]init];
   type1=[bill type];
  
   if([type1 isEqualToString:@"grocery"])
   {
       [self calculateVat];
       totalAmount=amount+totalTax;
       [self print];
   }
   else if([type1 isEqualToString:@"finished"])
   {
      [self calculateKst];
      [self calculateCst];
       totalAmount=amount+totalTax;
      [self print];
   }
   else
   {
   NSLog(@"Wrong Entry.Restart Program\n");
   }
 
}
-(void)print
{
   NSLog(@"Th amount is %.2f",amount);
   NSLog(@"The total tax is %.2f",totalTax);
   NSLog(@"The total bill amount is %.2f",totalAmount);
}

@end