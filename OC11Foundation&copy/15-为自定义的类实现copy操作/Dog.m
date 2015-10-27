//
//  Dog.m
//  OC11Foundation&copy
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Dog.h"

@implementation Dog
//zone 参数可以被忽略
- (id)copyWithZone:(NSZone *)zone
{
    NSLog(@"执行了copy方法");
    //对象的copy
    //自定义对象的copy都是深拷贝
    Dog *d = [[Dog alloc] init];
    //new speed    jd speed
    d.speed = self.speed;
    d.tuiNum = self.tuiNum;
    NSLog(@"%d,%d",d.speed,d.tuiNum);
    return d;
}
@end
