//
//  Car.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Car.h"

@implementation Car
//监控Car对象有没有被释放
//重写父类的dealloc方法
//注意：一定要调用父累的dealloc方法，而且放到代码的最后
- (void)dealloc
{
    NSLog(@"车报废了");
    [super dealloc];
}
-(void)run
{
    NSLog(@"速度是%d 车在 疯跑",self.speed);
}
@end
