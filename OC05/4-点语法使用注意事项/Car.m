//
//  Car.m
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)setSpeed:(int)speed
{
    NSLog(@"setSpeed !");
    _speed = speed;
    //会造成无限循环
    //在set方法中，不能使用self.xxxx
    //self.speed = speed;
    //等价于 [self setSpeed:speed];
}
-(int)speed
{
    NSLog(@"getSpeed !");
    return _speed;
    //return self.speed; -->[self speed];
}
@end
