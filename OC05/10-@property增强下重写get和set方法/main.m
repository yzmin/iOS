//
//  main.m
//  10-@property增强下重写get和set方法
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [Dog new];
        d.speed = 18; //点语法： [d setSpeed:-18];
        NSLog(@"d.speed = %d",d.speed);
    }
    return 0;
}
