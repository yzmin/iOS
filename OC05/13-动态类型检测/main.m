//
//  main.m
//  13-动态类型检测
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    动态类型检查的方法
    1、判断对象所属的类型（对象是否用指定的类创建出来的）
        1）判断对象是否指定的类或者子类的实例（判断一个对象是否是一个类或者子类创建出来的）
        2）判断对象是否是指定类的实例对象
        3）判断一个类是否是指定类的子类
 
    2、对象能否响应指定的方法
        1）对象能否调用指定的方法
        2）类中是否声明了某个方法
 
    3、如果能够调用方法，可以通过performSelect: 调用方法
 */

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1）判断对象是否指定的类或者子类的实例（判断一个对象是否是一个类或者子类创建出来的）
        //[对象 isKindOfClass 类对象];
        Animal *ani = [Animal new];
        Dog *dog = [Dog new];
        Cat *cat = [Cat new];
        //判断 dog 是否是 Animal 类或者子类的实例对象
        BOOL isYes = [dog isKindOfClass:[Dog class]];
        NSLog(@"%d",isYes);// 1 是   0 否
        
        //2）判断对象是否是指定类的实例对象(判断对象是谁生得)
        //[对象 isMemberOfClass 类对象];
        //dog  --> Dog
        isYes = [dog isMemberOfClass:[dog class]];
        NSLog(@"%d",isYes);// 1 是   0 否

        // 3）判断一个类是否是指定类的子类
        //Dog Animal
        isYes = [[dog class] isSubclassOfClass:[ani class]];
        NSLog(@"%d",isYes);// 1 是   0 否
    }
    return 0;
}
