//
//  Person.m
//  OC11Foundation&copy
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"
#import "SingletonTools.h"

@implementation Person
-(void)run
{
    //创建单例对象
    SingletonTools *st = [SingletonTools shareInstances];
    //调用set方法设定单例对象的属性值
    st.num = 200;
    st.text = @"yzmin!!";
}
@end
