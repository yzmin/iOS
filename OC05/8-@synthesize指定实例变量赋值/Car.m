//
//  Car.m
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car
//@synthesize speed;//默认生成了一个 speed 实例变量
//现在我们要求使用_speed实例变量
//指定setSpeed 操作的实例变量是 _speed
//该写方，系统不在给我们生成speed实例变量了。
@synthesize speed = _speed;//指定使用实例变量
//@synthesize speed = a;
//相当于
/*
 -(void)setSpeed:(int)speed
 {
    //self->speed = speed;
    _speed = speed;
    //相当于
    //a = speed;
 }
 */
-(void)test
{
    //speed 这个是系统生成的，私有的
    //NSLog(@"_speed = %d, speed = %d",_speed,speed);
    NSLog(@"_speed = %d, speed = %d",_speed);
}
@end
