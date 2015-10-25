//
//  baseProtocol.h
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "workProtocol.h"
//定义一个协议
//基础协议
//Person eat  run
//Person 采纳协议

//协议使用的流程
//1)定义协议
//2）让类遵守这个协议
//3）实现协议中对应的方法
@protocol baseProtocol <NSObject,workProtocol>
//声明一些方法
-(void)eat;
-(void)run;
@end