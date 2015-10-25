//
//  Baby.h
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "lookBabyProtocol.h"
@class BaoMu;

@interface Baby : NSObject
@property (nonatomic,assign) float blood;
@property (nonatomic,assign) float sleep;
//保姆、体力值、睡眠值
@property (nonatomic,strong) BaoMu<lookBabyProtocol> *bm;
-(void)wantEat;
-(void)wantSleep;
@end
