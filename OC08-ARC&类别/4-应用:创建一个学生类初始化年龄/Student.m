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
-(instancetype)initWithAge:(int)age
{
    //1）初始化父类，并且判断是否初始化成功
    if(self = [super init])
    {
        //初始化子类
        _age = age;
    }
    //3）返回self
    return self;
}

//stringWithString:(NSString *)str;
+(instancetype)studentWithAge:(int)age
{
    return [[[self alloc] initWithAge:age] autorelease];
}
@end
