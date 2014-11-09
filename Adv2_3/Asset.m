//
//  Asset.m
//  Adv2_3
//
//  Created by pw's air on 2014/11/9.
//  Copyright (c) 2014年 pw's air. All rights reserved.
//

#import "Asset.h"

@implementation Asset
-(id) initWithName:(NSString*) name USD:(int) usd EURO:(int) euro{
    self = [super init];
    if(self){
        _name = name;
        _usd = usd;
        _euro = euro;
    
    }
    return self;
}
-(int) totalInNTD{
    return 30*self.usd+40*self.euro;

}
-(NSString*) description
{
    NSDictionary* dictionary =
    @{
      @"name":self.name,
      @"usd":[NSNumber numberWithInt:self.usd],
      @"euro":[NSNumber numberWithInt:self.euro],
      @"total":[NSNumber numberWithInt:[self totalInNTD]]
      };
    return dictionary.description;

}
@end
