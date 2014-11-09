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
        NSDictionary* phoneBook =
        @{@"Mark":@"1234567",@"John":@"1111111"};
        [phoneBook enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"key=%@,value=%@",key,obj);
        }];
    }
    return 0;
}
