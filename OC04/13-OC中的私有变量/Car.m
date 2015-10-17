//
//  Car.m
//  OC04
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"
//定义了一个全局变量
//私有的，只能在当前文件中使用
int m = 10; //对外不可见

@implementation Car
{
    //私有的实例变量，对外不可见
    //不能被子类所继承
    int n;//全局的实例变量
}

-(void)run
{
    //self->m = 10;
    n = 1000;
    self->n = 1;
    NSLog(@"n = %d",n);

    NSLog(@"m = %d",m);
}

-(void)eat
{
    n = 1024;
    NSLog(@"n = %d",n);

}
@end
