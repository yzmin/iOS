//
//  FaShi.m
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "FaShi.h"

@implementation FaShi
-(instancetype)init
{
    //[super init] 一定要先调用父类的init方法
    if(self = [super init])
    {
         _blood = 100;
    }
    return self;
}
@end
