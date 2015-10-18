//
//  Person.m
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)init
{
    //初始化父类
    if(self = [super init])
    {
        //初始化子类
        _age = 18;
    }
    //返回
    NSLog(@"Person self = %p",self);
    NSLog(@"_age addr = %p",&_age);
    
    //[self release]; //self = nil;
    //[self alloc];
    return self;
}
@end
