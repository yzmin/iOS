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
//@property 帮我们自动声明实例变量
@property NSString *name;  //这个实例变量为 name,而非使用_name这个实例变量，然而会生成一个name实例变量
@property int age;
@property Sex sex;
//@property float height;
//@property float weight;
////注意：类型一致，可以写到一行上
@property float height,weight;

-(void)test;

@end
