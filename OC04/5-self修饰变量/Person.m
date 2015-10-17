//
//  Person.m
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setAge:(int)age
{
    //访问类的实例变量
    self->age = age;
}
-(int)age
{
    return age;
}
@end
