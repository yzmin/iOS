//
//  Person.m
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person

//@synthesize name;//帮我们生成 name方法的实现
//@synthesize age;
//@synthesize sex;
//@synthesize weight;
//@synthesize height;

@synthesize name,age,sex,height,weight;

-(void)test
{
    NSLog(@"_name =%@, name = %@",name);
}



//-(void)setName:(NSString *)name
//{
//    _name = name;
//}
//-(NSString *)name
//{
//    return _name;
//}
//
//-(void)setAge:(int)age
//{
//    _age = age;
//}
//-(int)age
//{
//    return _age;
//}
//
//-(void)setSex:(Sex)sex
//{
//    _sex = sex;
//}
//-(Sex)sex
//{
//    return _sex;
//}
//
//-(void)setHeight:(float)height
//{
//    _height = height;
//}
//-(float)height
//{
//    return _height;
//}
//
//-(void)setWeight:(float)weight
//{
//    _weight = weight;
//}
//-(float)weight
//{
//    return _weight;
//}

@end
