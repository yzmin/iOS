//
//  Dog.m
//  OC02
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Dog.h"

#pragma mark - 狗类的实现
@implementation Dog
//吃
-(void)eat:(NSString *)foodName
{
    _weight += 0.5f;
    NSLog(@"小天 吃 %@,当前体重:%.2f",foodName,_weight);
}

-(void)bark
{
    NSLog(@"颜色:%d, 速度:%d, 性别:%d, 体重:%.2f",_color,_speed,_sex,_weight);
}

-(void)run
{
    _weight -= 0.5f;
    NSLog(@"当前速度:%d, 体重:%.2f",_speed,_weight);
}

-(BOOL)compareWithDog:(Dog *)dog
{
    if(_color == dog->_color)
        return YES;
    else
        return NO;
}

-(int)compareSpeed:(Dog *)dog
{
    return _speed - (dog->_speed);
}

@end

