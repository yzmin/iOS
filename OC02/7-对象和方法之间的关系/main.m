//
//  main.m
//  7-对象和方法之间的关系
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 OC有参有返回值的方法
 -(int)sum:(int)x Y:(int)y;
  -(int)sum:(int)x Y:(int)y
 {
    return x + y;
 }
 
 Person *p = [Person new];
 1、对象作为方法的参数
 －(void)showPerson:(Person *)person;
 
 2、对象作为方法的返回值
 变形的方法
 -(Person *)changeSex:(Person *)person;
 */

#import <Foundation/Foundation.h>
//定义性别枚举
typedef enum{
    kSexWoman,
    kSexMan,
    kSexYao
}Sex;

//类的声明
@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
    Sex _sex;
}
-(void)showPerson:(Person *)person;
-(Person *)changeSex:(Person *)person;
@end

//类的实现
@implementation Person

-(void)showPerson:(Person *)person
{
    NSLog(@"姓名：%@, 年龄:%d, 性别:%d",person->_name,person->_age,person->_sex);
}

-(Person *)changeSex:(Person *)person
{
    person->_sex = kSexWoman;
    return person;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //创建对象
        Person *p = [Person new];
        p->_name = @"凤姐";
        p->_age = 30;
        p->_sex = kSexMan;
        
        [p showPerson:p];
        
        [p showPerson:[p changeSex:p]];
        
    }
    return 0;
}
