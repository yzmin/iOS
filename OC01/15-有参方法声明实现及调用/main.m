//
//  main.m
//  15-有参方法声明实现及调用
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 C语言函数
 //声明
 int sum(int a,int b);
 //实现
 int sum(int a,int b)
 {
    return a + b;
 }
 
 有参数有返回值的方法的格式：
 带一个参数的
 a、方法的声明
 -(返回值类型)方法名:(参数类型)参数名;
 b、方法的实现
 -(返回值类型)方法名:(参数类型)参数名
 {
 }
 
 带多个参数
 方法的声明：
 -(返回值类型)方法名1:(参数类型)参数名1 and方法名2:(参数类型)参数名;
 -(返回值类型)方法名1:(参数类型)参数名1 方法名2:(参数类型)参数名;
 -(返回值类型)方法名1:(参数类型)参数名1 :(参数类型)参数名;
 
 方法的实现：
 -(返回值类型)方法名1:(参数类型)参数名1 and方法名2:(参数类型)参数名
 {
 }
 -(返回值类型)方法名1:(参数类型)参数名1 方法名2:(参数类型)参数名
 {
 }
 -(返回值类型)方法名1:(参数类型)参数名1 :(参数类型)参数名
 {
 }
 注意：冒号也是方法名的一部分。
 */


#import <Foundation/Foundation.h>
//实现一个计算机类：calculator
//属性：_num1, _num2
//行为：sum

//类的声明
@interface Calculator : NSObject
{
    @public
    //定义类的实例变量
    int _num1;
    int _num2;
}
//方法的声明
- (int)sum;
//有参有返回值的方法声明
- (int)sum:(int)x andY:(int)y;

@end

@implementation Calculator
//无参有返回值
- (int)sum
{
    return _num1 + _num2;
}
//有参有返回值的方法实现
- (int)sum:(int)x andY:(int)y
{
    return x + y;
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Calculator *cal = [Calculator new];
        //给实例变量赋值
        cal->_num1 = 11;
        cal->_num2 = 22;
        
        //调用方法
        int a = [cal sum];
        NSLog(@"s = %d",a);
        
        int b = [cal sum:33 andY:67];
        NSLog(@"b = %d",b);
    }
    return 0;
}
