//
//  main.m
//  5-self修饰变量
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setAge:20];
        
        NSLog(@"age = %d",[p age]);
    }
    return 0;
}
