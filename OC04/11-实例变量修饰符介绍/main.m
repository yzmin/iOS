//
//  main.m
//  11-实例变量修饰符介绍
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 实例变量修饰符
 修饰符的修饰范围界定
 从它的定义位置开始，遇到下一个修饰符之前
 @public    公共的,任何地方都可以访问
 
 @protected  受保护类型，默认类型，当前类和子类都可以访问
 
 @private   只能在当前的类中去访问（子类不能访问）
 
 @package   框架级别的
 
 实例变量默认情况下，是不能够在类外部访问的
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p->_age = 10;
        //p->_height = 175.0f;
        //p->_weight = 120.0f;
        NSLog(@"age = %d",p->_age);
    }
    return 0;
}
