//
//  Car.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car
- (void)dealloc
{
    NSLog(@"车被销毁");
    [super dealloc];
}
-(void)run
{
    NSLog(@"车在跑");
}
@end
