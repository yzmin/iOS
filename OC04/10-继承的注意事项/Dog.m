//
//  Dog.m
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)lookHome
{
    NSLog(@"狗会看家");
}
//重写：重新实现从父类继承过来的方法
-(void)eat
{
    NSLog(@"-----------------");
    //调用父类的 eat 方法
    //super 指代的就是父类对象
    [super eat];
    NSLog(@"狗正在吃粑粑");
}
-(void)run
{
    NSLog(@"狗正在以200码的速度向前跑，撞树上了");
}
@end
