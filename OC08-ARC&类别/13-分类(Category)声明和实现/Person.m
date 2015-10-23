//
//  Person.m
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
//person类原有的方法实现
@end

//实现一个类别
@implementation Person (base)
-(void)eat{
    NSLog(@"Person eat");
}

-(void)run{
    NSLog(@"Person run");
}
@end
