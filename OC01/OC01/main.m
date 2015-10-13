//
//  main.m
//  OC01
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 command + n 创建新文件
问题一:import 和 include 区别
 1、import 引入头文件，将头文件拷贝过来，能自动防止文件重复拷贝，文件只拷贝一次
 2、include 引入头文件，将头文件拷贝过来，必须要预处理指令，才能防止文件重复拷贝
 
 问题二:Foundation/Foundation.h
 
 Foundation/Foundation.h 是 Foundation框架的头文件
 */

#import <Foundation/Foundation.h>
//#include <Foundation/Foundation.h>

//#include "Person.h"
//#include "Person.h"

//#import "Person.h"
//#import "Person.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        printf("Hello,World!");
    }
    return 0;
}
