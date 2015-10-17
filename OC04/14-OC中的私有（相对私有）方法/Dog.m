//
//  Dog.m
//  OC04
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)setTuiNum:(int)tuiNum
{
    _tuiNum = tuiNum;
}
//这个就是私有方法（相对私有）,在外不可见
//只有实现，没有声明
-(void)eat
{
    NSLog(@"狗在吃东西");
}
-(void)run
{
    //先吃东西
    [self eat];//调用当前对象的eat方法
    NSLog(@"狗在 疯跑");
}
@end
