# include <Foundation/Foundation.h>
# include "personRecord.h"

@implementation personRecord
@synthesize name,email,phoneNum;
-(void) print
{
   NSLog(@"Name %@",name);
   NSLog(@"Email %@",email);
   NSLog(@"Phone no %@",phoneNum);
}

@end