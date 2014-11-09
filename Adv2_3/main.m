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
        EchoBlock echoBlock = ^()
        {
            NSLog(@"counter = %d",counter++);
        };
        echoBlock();echoBlock();echoBlock();
        static int localCounter = 0;
        echoBlock = ^()
        {
            NSLog(@"local static = %d",localCounter++);
        };
        echoBlock();echoBlock();echoBlock();
    }
    return 0;
}
