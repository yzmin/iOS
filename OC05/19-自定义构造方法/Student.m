//
//  Student.m
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)initWith:(NSString *)name andAge:(int)age andSno:(int)sno
{
                //初始化父类
    if(self = [super initWith:name andAge:age])
    {
        //初始化子类
        _sno = sno;
    }
    return self;
}
@end
