//
//  Person.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //@public
    //定义两个实例变量
    NSString *_name;
    int _age;
}
//封装：提供 _name 和 _age 设置值和获取值
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setAge:(int)age;
-(int)age;



@end
