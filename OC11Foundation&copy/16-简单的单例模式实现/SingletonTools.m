//
//  SingletonTools.m
//  OC11Foundation&copy
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "SingletonTools.h"
//定义一个全局变量
static SingletonTools *instances = nil;

@implementation SingletonTools
-(id)copyWithZone:(NSZone *)zone
{
    return self;
}
+(id)allocWithZone:(NSZone *)zone
{
    //线程的保护
    @synchronized(self)
    {
        if(instances == nil)
        {
            //调用父类的alloc
            instances = [super allocWithZone:zone];
            return instances;
        }
    }
    return instances;
}
-(id)reatain
{
    return self;
}
-(NSUInteger)retainCount
{
    return NSUIntegerMax;
}
-(oneway void)release
{
    
}
-(id)autorelease
{
    return self;
}
//单例的接入点的方法
+(instancetype)shareInstances
{
    //目的：保证对象必须唯一
    if(instances == nil)
    {
        //创建一个对象
        instances = [[SingletonTools alloc] init];
    }
    return instances;
}
@end
