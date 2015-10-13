//
//  main.m
//  12-类的声明和实现
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 类是具有相同特征和共同行为的集合
 
 小轿车 大卡车 挖掘机
 
 车类
 类名：Car
 属性：颜色 速度 轮子数
 共同行为：跑 停 载人
 
 对象是类的具体的实体
 BYD
 BMW
 
 类分为 类的声明 类的实现
 类的声明的格式：
 @interface 类名 : 父类名（NSObject)
 {
 //定义实列变量
 }
 //定义类的行为声明
 
 @end
 
 类的实现
 @implementation 类名
 类行为的具体实现
 @end
 
 */
//Car 类的声明
@interface Car : NSObject
{
    //定义类的属性（实例变量，成员变量）
    //定义实例变量的格式：数据类型 _实例变量名；
    int _speed;//速度
    NSString *_color;//颜色
    int _wheelCount;//轮子数
    
}
//类共同的行为的声明

@end

//车类的实现
@implementation Car

//类共同行为的实现

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
