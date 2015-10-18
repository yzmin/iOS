//
//  Dog.m
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)eat:(NSString *)foodName
{
    NSLog(@"狗 正在吃: %@",foodName);
}
-(void)eat:(NSString *)foodName andDogName:(NSString *)dogName
{
    NSLog(@" %@ 狗正在吃: %@",foodName,dogName);
}
-(void)run
{
    NSLog(@"狗在 跑");
}
@end
