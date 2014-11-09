//
//  main.m
//  Adv2_3
//
//  Created by pw's air on 2014/11/9.
//  Copyright (c) 2014年 pw's air. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^EchoBlock)(void);
typedef float(^TotalPrice)(int,int);
int counter = 0;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* array = @[@"Jan",@"Feb",@"Mar",@"Apr",@"May",@"Jun"];
        [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"[%lu]value=%@",idx,obj);
            NSString* currentMonth = (NSString*)obj;
            if([currentMonth hasPrefix:@"M"]){
                *stop = true;
            }
        }];
    }
    return 0;
}
