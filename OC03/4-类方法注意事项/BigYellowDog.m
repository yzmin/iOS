//
//  BigYellowDog.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "BigYellowDog.h"

@implementation BigYellowDog
-(void)eat:(NSString *)foodName
{
    NSLog(@"对象方法：大黄狗正在吃%@",foodName);
}
+(void)eat:(NSString *)foodName
{
    NSLog(@"类方法：大黄狗正在吃%@",foodName);
}
@end
