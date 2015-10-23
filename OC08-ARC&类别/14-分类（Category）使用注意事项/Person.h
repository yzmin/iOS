//
//  Person.h
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
}
@property int age;//生成_age,即操作_age实例变量
-(void)run;//类的方法
@end


@interface Person (base)
-(void)run;//分类的方法
//{
//    int sex;//在分类中不能声明实例变量
//}
//@property int sex;//声明get和set方法

@end