//
//  main.m
//  14-OC中的私有（相对私有）方法
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [Dog new];
//        [d eat];
        [d run];
    }
    return 0;
}
