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
//在 ARC机制下，不能使用retain了
//应该使用strong 或者 weak
//@property (nonatomic,weak) Dog *dog;
/*
 __weak _dog;
 _dog = dog;
 */

@property (nonatomic,strong) Dog *dog;
/*
 __strong _dog;
 _dog = dog;
 */
@end
