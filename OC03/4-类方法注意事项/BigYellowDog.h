//
//  BigYellowDog.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BigYellowDog : NSObject
//注意：
/*
    1）在一个类中，不允许存在类型相同，方法名相同的方法
    如：对象方法 不能存在同名的方法
    2）允许存在方法名相同，类型不同的方法
 */

-(void)eat:(NSString *)foodName;
+(void)eat:(NSString *)foodName;
@end
