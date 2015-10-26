//
//  main.m
//  2-protocol的使用补充
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 引用协议方式：
 @protocol 协议名;
    1) 要遵守这个协议的类，用@protocol 告诉编译器这是一个协议
    2）在 .m 文件中，导入协议
    3) 在main函数中，也要导入协议的头文件
 */

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "baseProtocol.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [Dog new];
        [dog run];
    }
    return 0;
}
