//
//  Person.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)listenMusic
{
    //用IPad 播放音乐
    //nil 向任何方法发送消息都无效
    [_ipad playMusic];
}
-(void)setIPad:(IPad *)ipad
{
    _ipad = ipad;
}
@end
