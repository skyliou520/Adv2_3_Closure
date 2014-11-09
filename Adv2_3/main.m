//
//  main.m
//  Adv2_3
//
//  Created by pw's air on 2014/11/9.
//  Copyright (c) 2014年 pw's air. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^EchoBlock)(void);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        EchoBlock myBlock =^(void){NSLog(@"Hello Echo!");};
        myBlock(); myBlock(); myBlock();
    }
    return 0;
}
