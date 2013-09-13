#import<Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
   NSDictionary *pair = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:10], @"centimeter",[NSNumber numberWithInt:40], @"pound",[NSNumber numberWithInt:50], @"ounce",[NSNumber numberWithInt:20], @"kilogram",[NSNumber numberWithInt:30], @"yard",[NSNumber numberWithInt:10], @"millimeter",[NSNumber numberWithInt:10], @"kiloMeter",[NSNumber numberWithInt:20], @"milligram",[NSNumber numberWithInt:20], @"gram",[NSNumber numberWithInt:10], @"Meter", nil];
   int flag=0;
   for(NSString* key in pair)
   {
      if ([key rangeOfString:@"meter" options: NSCaseInsensitiveSearch].location != NSNotFound)
      {
         if(flag==0) 
         {
             NSLog(@"The dictionary keys which end with meter/Meter are:\n");
         }
         flag=1;
         NSLog(@"Key: %@, Value: %@\n", key, [pair objectForKey:key]);
      }
   }
   if(flag==0)
   {
      NSLog(@"No Keys ending with meter");
   }
   
return 0;
}