//
//  Person.m
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)setAge:(int)age
{
    NSLog(@"调用了 setAge");
    _age = age;
}
-(int)age
{
    NSLog(@"调用了 age");
    return _age;
}

-(void)setSex:(Sex)sex
{
    _sex = sex;
}
-(Sex)sex
{
    return _sex;
}

-(void)setHeight:(float)height
{
    _height = height;
}
-(float)height
{
    return _height;
}

-(void)setWeight:(float)weight
{
    _weight = weight;
}
-(float)weight
{
    return _weight;
}

@end
