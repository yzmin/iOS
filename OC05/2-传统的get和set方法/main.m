//
//  main.m
//  2-传统的get和set方法
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setName:@"凤姐"];
        [p setAge:20];
        [p setSex:kSexYao];
        [p setHeight:170.0f];
        [p setWeight:59.0f];
        
        NSLog(@"%@,%d,%d,%.2f,%.2f",[p name],[p age],[p sex],[p height],[p weight]);
    }
    return 0;
}
