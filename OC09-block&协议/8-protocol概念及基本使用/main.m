//
//  main.m
//  8-protocol概念及基本使用
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
    1、什么是协议？
        一些方法的声明，一般写到一个 .h 的头文件中
        方法有两种：
        1）必须实现
        2）选择实现
    2、协议的作用：
        供其他的类去遵守
        如果一个类遵守了一个协议，就应该实现这个协议中定义的必须要实现的方法
 
    3、如何定义一个协议：
        @protocol xxx <NSObject> 默认情况下遵守 NSObject协议
        @end
    4、类遵守协议的格式：
        1）遵守一个协议：
            先导入头文件
            @interface 类名:NSObject <xxx>
            @end
        2)遵守多个协议
            @interface 类名 :NSObject <xxx,xxx>
            @end
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
