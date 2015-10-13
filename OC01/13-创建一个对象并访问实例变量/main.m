//
//  main.m
//  13-创建一个对象并访问实例变量
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 类名 *指针变量名 ＝ [类名 new];
 Car *car = [Car new];
 [Car new]; 做了三件事
 1、申请内存空间
 2、初始化类中的实例变量
 3、返回对象内存地址
 */

#import <Foundation/Foundation.h>

//类的声明
@interface Car : NSObject
{
    @protected //受保护的,只能在当前类和子类中访问实例变量
    @public //公共的，可以在任何地方访问
    //类的实例变量
    int _speed;//速度
    NSString *_color;//颜色
    int _wheelCount;//轮子数
}
//类方法的声明


@end

//类的实现
@implementation Car
//类方法的实现


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Car *car = [Car new];
        //给类中的实例变量赋值
        car->_color = @"蓝色";
        car->_speed = 120;
        car->_wheelCount = 4;
        
        //访问类中的实例变量
        NSLog(@"颜色:%@, 速度:%d, 轮子数:%d",car->_color,car->_speed,car->_wheelCount);
    }
    return 0;
}
