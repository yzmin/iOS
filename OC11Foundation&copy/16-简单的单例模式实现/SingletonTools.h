//
//  SingletonTools.h
//  OC11Foundation&copy
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonTools : NSObject
@property (nonatomic,assign) int num;
@property (nonatomic,copy) NSString *text;
//单例的类，提供一个接入点
+(instancetype)shareInstances;

@end
