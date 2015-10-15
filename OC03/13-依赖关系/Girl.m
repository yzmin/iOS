//
//  Girl.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Girl.h"

@implementation Girl
//给土豪打电话
-(void)callPhoneToTuHao:(IPhone *)iphone
{
    //设置手机号码
    [iphone setPhoneNum:@"13800138000"];
    //用手机拨打电话
    [iphone call];
    
}
//给土豪发短信
-(void)sendMessageToTuHao:(IPhone *)iphone
{
    //设定短信内容
    [iphone setMsgContent:@"约吗"];
    [iphone setPhoneNum:@"13800138000"];
    //发送短信
    [iphone sendMessage];
}
@end
