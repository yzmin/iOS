//
//  Microblog.m
//  OC07-内存管理
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Microblog.h"
#import "User.h"

@implementation Microblog
- (void)dealloc
{
    [_textContent release];
    [_image release];
    [_postDate release];
    [_user release];
    [_referenceBlog release];
    [super dealloc];
}
@end
