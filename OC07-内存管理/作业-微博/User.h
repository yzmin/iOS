//
//  User.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 作者类 (User)
 * 名称
 * 生日
 * 账号
 */
#import <Foundation/Foundation.h>
@class Account;

typedef struct
{
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
}Birthday;

@interface User : NSObject
//名字
@property (nonatomic,retain) NSString *name;
//生日
@property (nonatomic,assign) Birthday birthday;
//账号
@property (nonatomic,retain) Account *account;
@end
