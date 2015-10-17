//
//  Person.m
//  OC04
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
//以%@ 输出实例对象值的时候,调用该方法
- (NSString *)description
{
    //返回字符串，相当于Java 的toString
    NSString *str = [NSString stringWithFormat:@"姓名:%@, 年龄:%d",_name,_age];
    return str;
    //误区，不能使用 self,会造成死循环
    //return [NSString stringWithFormat:@"%@",self];
}
//以%@ 输出类对象的时候,调用该方法
+ (NSString *)description
{
    return @"xxxxxxoooooo";
}
@end
