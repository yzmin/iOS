//
//  Person.m
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
+(instancetype)person
{
    //Person person --> Person对象
    //Student person  --> Student对象
    
    //创建对象
    //return [[[Person alloc]init] autorelease];//返回对象空间地址
    return [[[self alloc]init] autorelease];//返回对象空间地址
    //能够帮我们把对象给加入自动释放池
}
- (void)dealloc
{
    NSLog(@"----> Person dealloc");
    [super dealloc];
}
-(void)run
{
    NSLog(@"Person run");
}
@end
