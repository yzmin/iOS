//
//  main.m
//  7-@synthesize关键字介绍和使用
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
    @synthesize 关键字的作用是
    帮我们实现get和set方法
    格式：
        @property int xxx;
        @synthesize xxx;
 
    注意：
        1）赋值问题：
            @property int xxx;
            @synthesize xxx;
        这种格式下，到底给谁赋值了？
        检测：
            当前类有没有 xxx 这个实例变量，如果有，则使用这个实例变量
            如果没有，则会创建一个名为 xxx 的实例变量（这个变量是私有的，继承后子类不可见）
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p.name = @"胡一刀";
        p.age = 19;
        p.height = 180.0f;
        NSLog(@"p.name = %@,p.age = %d height = %.2f",p.name,p.age,p.height);
        [p test];
    }
    return 0;
}
