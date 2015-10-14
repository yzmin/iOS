//
//  Person.m
//  OC02
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

#pragma mark - 人类的实现
@implementation Person
-(void)feedWithDog:(NSString *)foodName
{
    [_dog eat:foodName];
}
-(void)walkWithDog
{
    [_dog run];
}

@end
