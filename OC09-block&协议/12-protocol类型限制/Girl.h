//
//  Girl.h
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "houseHoldProtocol.h"
#import "CaculatorProtocol.h"

@interface Girl : NSObject <houseHoldProtocol>
//女孩养一条狗
//要求这狗，必须会算数
@property (nonatomic,strong) Dog<CaculatorProtocol> *dog;
@end
