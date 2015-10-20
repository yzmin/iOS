//
//  Seller.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Seller.h"

@implementation Seller
- (void)dealloc
{
    NSLog(@"Seller 被销毁了");
    [_goods release];
    [super dealloc];
}
@end
