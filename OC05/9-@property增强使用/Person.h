//
//  Person.h
//  OC05
//
//  Created by yezhimin on 15/10/17.
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
{
    //能被子类继承
    int age;
    //实例变量，必须以下划线开头
    //int _age;
}
//声明set和get方法
//setName
//name

@property NSString *name;
@property int age;
/*
 -(void)setAge:(int)age;
 -(int)age;
 */
@property Sex sex;
@property float height,weight;

-(void)test;

@end
