//
//  Soilder.m
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Soilder.h"

@implementation Soilder
-(instancetype)init
{
    if(self = [super init])
    {
        _gun = [Gun new];
        //_gun.bulletCount = 3;
    }
    return self;
}

-(void)fireByGun
{
    [_gun shoot];//枪射击方法
}
@end
