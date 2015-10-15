//
//  Person.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name
{
    //在set方法的内部一定要给实例变量赋值
    _name = name;
}

-(NSString *)name
{
    //在get方法的内部，一定要返回实例变量的值
    return _name;
}

-(void)setAge:(int)age
{
    //进行赋值的过滤
    if(age > 0)
        _age = age;
}

-(int)age
{
    return _age;
}

@end
