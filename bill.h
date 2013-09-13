#import<Foundation/Foundation.h>
#import "vat.h"
#import "kst.h"
#import "cst.h"
@interface Bill:NSObject <vat,kst,cst>
{
  NSString *type;
  float amount;
  float totalTax;
  float totalAmount;
}
@property float amount;
@property float totalTax;
@property (retain)NSString *type;
-(void)taxCalculator:(Bill*) bill;
-(void)print;
@end