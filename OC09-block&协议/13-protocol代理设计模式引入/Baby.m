//
//  Baby.m
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Baby.h"
#import "BaoMu.h"

@implementation Baby
-(void)wantEat
{
    NSLog(@"婴儿在哭……");
    //保姆要喂他吃
    [self.bm feedBabyEat:self];//self.bm  --> [self bm];
}
-(void)wantSleep
{
    NSLog(@"婴儿在哭……");
    //保姆要哄婴儿睡觉
    [self.bm HongBabySleep:self];
}
@end
