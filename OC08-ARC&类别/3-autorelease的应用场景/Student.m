//
//  Student.m
//  OC08-ARC&类别
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)dealloc
{
    NSLog(@"Student dealloc");
    [super dealloc];
}
-(void)run
{
    NSLog(@"Student run");
}
@end
