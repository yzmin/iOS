//
//  main.m
//  3-对象的存储细节
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 问题1:
    [Person new];
 1、申请内存空间
 2、初始化类中的实例变量
 3、返回内存地址
 
 
 Person *p = [Person new];
 问题2:
    [Person new];创建对象在内存那个区？
    创建对象 在堆区
    对象内的第一个指针isa指向类
 
 问题3:实例变量存储在内存那个区？指针p存储在内存那个区？
 指针p 在栈区
 实例变量 在堆区
 
 问题4:[p run] 怎么调用的
 p指针找到对象，再通过isa指针，指向代码区的类。
 指针p－>堆区的对象->isa指针->代码区的Person类－>调用
 
 一个类可以创建多个对象。
 */


#import <Foundation/Foundation.h>

//类的声明
@interface Person : NSObject
{
    //定义实例变量
@public
    NSString *_name;
    int _age;
}
//方法的声明
-(void)run;

@end

@implementation Person
-(void)run
{
    
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //创建对象
        Person *p = [Person new];
        p->_age = 12;
        p->_name = @"yzmin";
        
        [p run];
        NSLog(@"p : %p",p);
        
        Person *p2 = [Person new];
        NSLog(@"p2 : %p",p2);
        
    }
    return 0;
}
