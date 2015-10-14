//
//  Person.h
//  OC02
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

#pragma mark - 人类的声明
@interface Person : NSObject
{
@public
    NSString *_name;
    Dog *_dog;
}
//喂狗
-(void)feedWithDog:(NSString *)foodName;
//遛狗
-(void)walkWithDog;

@end

