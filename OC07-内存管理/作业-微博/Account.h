//
//  Account.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 账号类 (Account)
 * 账号名称
 * 账号密码
 * 账号注册时间 (可以用字符串表示NSString)
 */

#import <Foundation/Foundation.h>

@interface Account : NSObject
//账号名称
@property (nonatomic,retain) NSString *accountName;
//账号密码
@property (nonatomic,retain) NSString *accountPassCode;
//账号注册时间
@property (nonatomic,retain) NSString *registrationDate;

@end
