//
//  Person.m
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"
#import "Person_work.h"


//扩展、延展、延展类别
//延展是一个特殊的分类
//特点：
//1）可以在延展中定义实例变量
//2）不能使用 @implementation 类名() 实现类别的方法
//3）作用，可以定义私有的变量和方法
@interface Person ()
{
    float _weight;
}
-(void)run;//run 是相对私有的方法，是隐藏方法的一种手段
@end

//@implementation Person ()
//
//@end

@implementation Person
-(void)run
{
    NSLog(@"延展的 run方法 %.2f",_weight);
}
-(void)test
{
    [self run];
    [self work];
}
//Person_work.h 声明的，延展
-(void)work
{
    NSLog(@"Person work %d",_height);
}
@end


