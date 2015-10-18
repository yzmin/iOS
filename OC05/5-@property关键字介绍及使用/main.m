//
//  main.m
//  5-@property关键字介绍及使用
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 1、@property使用
    编译器的指令(编译的时候，告诉编译器干什么事情).
 2、作用：让编译器帮我们自动生成 实例变量 的get和set方法的声明
 3、使用格式：
    @property   类型  set方法的名称（实例变量名）
 
    第一种方式：
    .h
    @property 声明方法
    .m 
    手动实现get和set方法
 */

#import <Foundation/Foundation.h>
#import "Person.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        
        p.name = @"张三丰";
        p.age = 100;
        NSLog(@"name = %@, age = %d",p.name,p.age);
        
    }
    return 0;
}
