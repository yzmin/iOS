//
//  main.m
//  16-简单的单例模式实现
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    单例模式：
        对象在任何时候，都只有一个，好处是，在多个类之间共享数据
    设计要点：
        1）保证唯一，程序运行期间必须唯一
        2）单例类，必须提供一个接入点（特殊的类方法）
    
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p run];
        
        Dog *d = [Dog new];
        [d run];
    }
    return 0;
}
