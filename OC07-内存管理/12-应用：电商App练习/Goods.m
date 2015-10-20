//
//  Goods.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Goods.h"

@implementation Goods
- (void)dealloc
{
    NSLog(@"Goods 被销毁");
    [_imgUrl release];
    [_productName release];
    [super dealloc];
}
@end
