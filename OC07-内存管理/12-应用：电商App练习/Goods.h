//
//  Goods.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct
{
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
}CZDate;

@interface Goods : NSObject
//对象类型的 @property 一般使用 retain
//基本数据类型 @property 一般使用 assign
//商品名称
@property (nonatomic,retain) NSString *productName;
//单价
@property (nonatomic,assign) double productPrice;
//重量
@property (nonatomic,assign) double productWeight;
//商品图片
@property (nonatomic,retain) NSString *imgUrl;
//生产日期
@property (nonatomic,assign) CZDate productDate;
//过期日期
@property (nonatomic,assign) CZDate expireDate;
@end
