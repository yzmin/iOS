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
    //姓名
    NSString *_name;
    //年龄
    int _age;
    //性别
    Sex _sex;
    //身高
    float _height;
    //体重
    float _weight;
}
//声明name 的get和set方法
//传统方式
//-(void)setName:(NSString *)name;
//-(NSString *)name;
//@property
@property NSString * name;

//-(void)setAge:(int)age;
//-(int)age;
@property int age;

//-(void)setSex:(Sex)sex;
//-(Sex)sex;
@property Sex sex;

//-(void)setHeight:(float)height;
//-(float)height;
@property float height;

//-(void)setWeight:(float)weight;
//-(float)weight;
@property float weight;

@end
