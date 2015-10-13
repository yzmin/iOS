//
//  main.m
//  14-无参方法声明实现及调用
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 C语言函数
 无参无返回值
 无参有返回值
 有参无返回值
 有参有返回值
 
 OC中无参方法的格式；
 －(返回值类型)方法名；
 
 - (int)sum;
 - (int)sum
 {
    return _a + _b;
 }
 
 调用的格式：
 成员方法 [对象 方法名];
 类方法 [类名 方法名];
 */

#import <Foundation/Foundation.h>

//类的声明
@interface Car : NSObject
{
    //@protected //受保护的,只能在当前类和子类中访问实例变量
    @public //公共的，可以在任何地方访问
    //类的实例变量
    int _speed;//速度
    NSString *_color;//颜色
    int _wheelCount;//轮子数
}
//类方法的声明
-(void)run;//车跑方法
-(void)stop;//车停方法

@end

//类的实现
@implementation Car
//类方法的实现
-(void)run
{
    NSLog(@"BMW 跑在乡间的小道上,速度是:%d",_speed);
}
-(void)stop
{
    NSLog(@"咯吱 车停了");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Car *car = [Car new];
        //给类中的实例变量赋值
        car->_color = @"蓝色";
        car->_speed = 123;
        car->_wheelCount = 4;
        
        [car run];
        [car stop];
    }
    return 0;
}
