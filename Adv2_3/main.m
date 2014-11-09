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
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        EchoBlock myBlock =^(void){NSLog(@"Hello Echo!");};
        myBlock(); myBlock(); myBlock();
        myBlock =^(void){NSLog(@"Refill");};
        myBlock();
        float discount = 0.9f;
        TotalPrice total = ^(int unitPrice, int quantity){
            return discount*unitPrice*quantity;
        };
        NSLog(@"buy iPhone, total:%.1f",total(30000,8));
        NSLog(@"buy iPad, total:%.1f", total(25000,4));
        discount = 0.5f;
        NSLog(@"[1111] buy iPhone, total:%.1f",total(30000,8));
        NSLog(@"[1111] buy iPad, total:%.1f", total(25000,4));
    }
    return 0;
}
