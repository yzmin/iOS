//
//  Car.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)start:(Car *)car
{
    NSLog(@"车已经启动");
    [car retain]; //car retainCount = 2
}
- (void)dealloc
{
    NSLog(@"Car 报废了");
    [super dealloc];
}
@end
