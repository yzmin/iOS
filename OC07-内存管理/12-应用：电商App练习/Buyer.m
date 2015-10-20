//
//  Buyer.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Buyer.h"

@implementation Buyer
- (void)dealloc
{
    NSLog(@"Buyer 被销毁了");
    [super dealloc];
}
@end
