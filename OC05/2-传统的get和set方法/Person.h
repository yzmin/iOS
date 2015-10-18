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
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setAge:(int)age;
-(int)age;

-(void)setSex:(Sex)sex;
-(Sex)sex;

-(void)setHeight:(float)height;
-(float)height;

-(void)setWeight:(float)weight;
-(float)weight;

@end
