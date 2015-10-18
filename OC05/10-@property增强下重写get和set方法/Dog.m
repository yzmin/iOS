//
//  Dog.m
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Dog.h"

@implementation Dog
//重新实现set方法
//当我们手动自己实现set方法后，此时编译器只帮我们生成get方法
//在增强模式下 重新实现的原则：
//1）get方法和set方法，不能同时重新实现
//2）只能实现其中的一个
-(void)setSpeed:(int)speed
{
    if(speed > 0)
        _speed = speed;
}

//-(int)speed
//{
//    return _speed;
//}

@end
