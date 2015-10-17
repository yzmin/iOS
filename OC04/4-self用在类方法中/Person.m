//
//  Person.m
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
+(void)eat
{
    NSLog(@"类方法 eat");
    //self 在对像方法中 <Car:ox100xxxxxxxx>
    //self 在类方法中 Person
    //self 指代当前的类（类对象）
    NSLog(@"self = %@, self addr = %p",self,self);
    [self work];
}
+(void)work
{
    NSLog(@"类方法 work");
}
@end
