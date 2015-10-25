//
//  Student.m
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)needHouse
{
    NSLog(@"学生需要温暖的家");
    //自己不干，找别干
    [self.delegate findHouse];
}
@end
