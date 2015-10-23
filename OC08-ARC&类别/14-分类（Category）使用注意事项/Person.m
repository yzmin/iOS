//
//  Person.m
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/23.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person (base)

-(void)run
{
    NSLog(@"age = %d",_age);
}

@end

@implementation Person
-(void)run
{
    NSLog(@"Person run");
}
@end
