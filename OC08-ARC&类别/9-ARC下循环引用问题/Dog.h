//
//  Dog.h
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Dog : NSObject
//@property (nonatomic,strong) Person *owner;
@property (nonatomic,weak) Person *owner;
@end
