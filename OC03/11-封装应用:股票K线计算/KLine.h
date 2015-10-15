//
//  KLine.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KLine : NSObject
{
    float _maxPrice;//最高
    float _minPrice;//最低
    
    float _avgPrice;//平均
}
//去掉下划线，首字母大写，参数去掉下划线
-(void)setMaxPrice:(float)maxPrice;
//去掉下划线的实例变量名
-(float)maxPrice;

-(void)setMinPrice:(float)minPrice;
-(float)minPrice;

-(float)avgPrice;
@end
