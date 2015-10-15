//
//  IPad.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IPad : NSObject
{
    NSString *_model;
}
-(void)playMusic;//播放音乐
-(void)playGame;//玩游戏
-(void)setModel:(NSString *)model;
@end
