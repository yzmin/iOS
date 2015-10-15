//
//  Car.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"
//只能在本文件中使用
static int m = 10;
@implementation Car
-(void)run
{
    NSLog(@"m = %d",m);
}
-(void)getNum
{
    static int n = 10;
    NSLog(@"n = %d",n);
    n++;
}
@end
