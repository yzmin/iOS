//
//  Person.m
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)goHome:(Car *)car
{
    NSLog(@"人开车回家");
    [car run];
}
@end
