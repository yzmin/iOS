//
//  main.m
//  15-为自定义的类实现copy操作
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    自定义类实现copy的功能
    1）创建一个类
 
    2）遵守NSCopying协议
 
    3）实现协议中的声明的方法
 
    4) [对象 copy];
    目的：产生一个副本
 */
#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *jd = [Dog new];
        jd.speed = 230;
        jd.tuiNum = 8;
        NSLog(@"jd addr = %p",jd);
        Dog *byd = [jd copy];
        NSLog(@"byd addr = %p",byd);
    }
    return 0;
}
