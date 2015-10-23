//
//  Student.h
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic,assign) int age;
//自动义构造方法
-(instancetype)initWithAge:(int)age;
+(instancetype)studentWithAge:(int)age;
@end
