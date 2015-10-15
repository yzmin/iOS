//
//  KLine.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "KLine.h"

@implementation KLine
-(void)setMaxPrice:(float)maxPrice
{
    //一定是用行参给实例变量赋值
    _maxPrice = maxPrice;
    //最高价格变化时，计算平均价格
    _avgPrice = (_minPrice + _maxPrice)/2;
}
-(float)maxPrice
{
    return _maxPrice;
}

-(void)setMinPrice:(float)minPrice
{
    _minPrice = minPrice;
    _avgPrice = (_minPrice + _maxPrice)/2;
}

-(float)minPrice
{
    return _minPrice;
}

-(float)avgPrice
{
    return _avgPrice;
}

@end
