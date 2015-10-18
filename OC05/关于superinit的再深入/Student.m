//
//  Student.m
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)init
{
    if(self = [super init])
    {
        _sno = 100;
    }
    NSLog(@"self = %p",self);
    NSLog(@"_sno addr = %p",&_sno);
    return self;
}
-(void)run
{
    
}
@end
