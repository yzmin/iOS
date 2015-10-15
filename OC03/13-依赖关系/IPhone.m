//
//  IPhone.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "IPhone.h"

@implementation IPhone
-(void)setPhoneNum:(NSString *)phoneNum
{
    _phoneNum = phoneNum;
}
-(NSString *)phoneNum
{
    return _phoneNum;
}
-(void)setMsgContent:(NSString *)msgContent
{
    _msgContent = msgContent;
}
-(NSString *)msgContent
{
    return _msgContent;
}

-(void)call
{
    NSLog(@"正在给%@拨打电话",_phoneNum);
}
-(void)sendMessage
{
    NSLog(@"正在给%@发送短信，短信内容：%@",_phoneNum,_msgContent);
}
@end
