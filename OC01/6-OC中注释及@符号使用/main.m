//
//  main.m
//  6-OC中注释及@符号使用
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 command + shift + k 清理缓存
 */
//test1
void test1();
void test1()
{
    NSLog(@"今天你泼了吗");
}

/*
 多行注释
 */

/**
 *  文档注释
 */

void test2();
void test2()
{
    NSLog(@"泼了，泼了");
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        test1();
        test2();
    }
    return 0;
}
