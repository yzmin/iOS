//
//  lookBabyProtocol.h
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Baby;

@protocol lookBabyProtocol <NSObject>
//喂婴儿吃饭
-(void)feedBabyEat:(Baby *)baby;
//哄婴儿睡觉
-(void)HongBabySleep:(Baby *)baby;
@end
