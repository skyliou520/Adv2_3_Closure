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
        void(^blockArray[5])(void);
        int i=0;
        while (i<5) {
            blockArray[i] = ^(){
                NSLog(@"get i at %d\n",i);
            };
                      i++;
        }
        for (int i=0; i<5; i++) {
            blockArray[i]();
        }
    }
    return 0;
}
