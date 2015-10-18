//
//  Gun.m
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Gun.h"

@implementation Gun
-(instancetype)init
{
    if(self = [super init])
    {
        //枪创建，就有子弹。
        _bulletCount = 3;
    }
    return self;
}
-(void)shoot
{
    if(_bulletCount > 0)
    {
        _bulletCount--;
        NSLog(@"叭叭  枪在射击 》》》,剩余子弹数:%d",_bulletCount);
    }
    else
    {
        NSLog(@"没有子弹了");
    }
}
@end
