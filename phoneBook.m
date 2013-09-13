# include <Foundation/Foundation.h>
# include "phoneBook.h"

@implementation phoneBook

-(id) initWithName: (NSString *)Name
{
   phoneBookName=[[NSString alloc]init];
   phoneBookName= Name;
   book=[[NSMutableArray alloc]init];
   return self;
}


-(void) addRecord: (personRecord *) theRecord
{
   [book addObject:theRecord];
}


-(void) remove: (personRecord *) theRecord
{
  for(id obj in book)
   {  
      
      if([[obj name] isEqual:[theRecord name]]&&[[obj email] isEqual:[theRecord email]]&&[[obj phoneNum] isEqual:[theRecord phoneNum]])
      {  
               [book removeObject:obj];break;

      }
   }

}


-(void) findPerson: (NSString *) theName
{
   
   for(id obj in book)
   {  
      NSComparisonResult comp= [[obj name] compare: theName];
      if(comp==NSOrderedSame)
      {
          NSLog(@"Name:%@",[obj name]);
          NSLog(@"Email:%@",[obj email]);
          NSLog(@"Phone:%@",[obj phoneNum]);

      }
   }
   
}


-(int) noOfEntries
{
   int numObjects= [book count];
   return numObjects;
}

-(void) list
{
   for(id obj in book)
   {  
      [obj print];
   }
}

-(void) dealloc
{
   
   [self release];
   [super dealloc];
}
@end