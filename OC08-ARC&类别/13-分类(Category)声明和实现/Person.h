//
//  Person.h
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//person 类原有的属性和行为
@end

//给Person 类增加一个新的方法
//声明一个分类
@interface Person (base)
-(void)eat;
-(void)run;
@end
