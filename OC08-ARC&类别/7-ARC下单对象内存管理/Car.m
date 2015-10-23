//
//  Car.m
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)run
{
    NSLog(@"车在疯跑");
}
- (void)dealloc
{
    NSLog(@"Car dealloc");
}
@end
