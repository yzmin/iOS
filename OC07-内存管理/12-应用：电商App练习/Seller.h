//
//  Seller.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"
#import "Goods.h"

@interface Seller : Person
//Goods
@property (nonatomic,retain) Goods *goods;
@end
