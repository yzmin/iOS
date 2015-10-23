//
//  Dog.m
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)run
{
    NSLog(@"狗 以200吗的速度 撞树上了");
}
- (void)dealloc
{
    NSLog(@"Dog dealloc");
//    [super dealloc];
}
@end
