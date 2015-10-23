//
//  Person.h
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;

@interface Person : NSObject
/*
 __strong Dog *_dog;
 */
@property (nonatomic,strong) Dog *dog;
@end
