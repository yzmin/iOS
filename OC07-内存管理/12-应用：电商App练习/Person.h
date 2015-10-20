//
//  Person.h
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
    kSexMan,
    kSexWoman,
    kSexYao
}Sex;

@interface Person : NSObject
//名字
@property (nonatomic,retain)NSString *name;
//性别
@property (nonatomic,assign)Sex sex;
//年龄
@property (nonatomic,assign)int age;
//身高
@property (nonatomic,assign)float height;

@end
