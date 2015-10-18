//
//  main.m
//  16-构造方法的概念
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
//int argc, const char * argv[] 定义则有清零作用
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int m;
        NSLog(@"m = %d",m);
        //内存有清零操作，OC的标准语法，不允许这样的写法，没有初始化就是使用
        Car *c = [Car alloc];//避免这样的写法
        NSLog(@"%d",c.speed);
    }
    return 0;
}
