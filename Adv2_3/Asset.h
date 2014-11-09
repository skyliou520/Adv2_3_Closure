//
//  Asset.h
//  Adv2_3
//
//  Created by pw's air on 2014/11/9.
//  Copyright (c) 2014年 pw's air. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
-(id) initWithName:(NSString*) name USD:(int) usd EURO:(int) euro;
-(int) totalInNTD;
@property (strong) NSString* name;
@property int usd;
@property int euro;
@end
