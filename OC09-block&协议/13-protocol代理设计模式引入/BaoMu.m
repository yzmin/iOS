//
//  BaoMu.m
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "BaoMu.h"
#import "Baby.h"

@implementation BaoMu
-(void)feedBabyEat:(Baby *)baby
{
    baby.blood += 20;
    NSLog(@"保姆正在喂婴儿吃东西 baby.blood = %.2f",baby.blood);
}

-(void)HongBabySleep:(Baby *)baby
{
    baby.sleep += 10;
    NSLog(@"保姆正在哄婴儿睡觉 baby.sleep = %.2f",baby.sleep);
}
@end
