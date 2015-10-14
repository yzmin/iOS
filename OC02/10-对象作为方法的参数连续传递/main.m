//
//  main.m
//  10-对象作为方法的参数连续传递
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//枪类的声明
@interface Gun : NSObject
{
    @public
    NSString *_size;//型号
    int _bulletCount;//子弹数
}
//射击方法
-(void)shoot;

@end

//枪类的实现
@implementation Gun
//射击方法
-(void)shoot
{
    //每射击一次，子弹数减一
    if(_bulletCount > 0)
    {
        _bulletCount--;
        NSLog(@"%@ 正在凸凸凸的射击,剩余子弹:%d",_size,_bulletCount);
    }
    else
    {
        _bulletCount = 0;
         NSLog(@"%@ 没有子弹了,剩余子弹:%d",_size,_bulletCount);
    }
}

@end

//士兵类的声明
@interface Soldier : NSObject
{
    @public
    NSString *_name;//姓名
    int _life;//生命
    int _level;//等级
}
//士兵开枪
-(void)fireByGun:(Gun  *)gun;

@end

//士兵类的实现
@implementation Soldier
-(void)fireByGun:(Gun  *)gun
{
    //让枪射击
    [gun shoot];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建枪
        Gun *g = [Gun new];
        g->_size = @"AK47";
        g->_bulletCount = 5;
        
        Soldier *s = [Soldier new];
        s->_name = @"拉登";
        s->_level = 1;
        s->_life = 100;
        
        [s fireByGun:g];
        [s fireByGun:g];
        [s fireByGun:g];
        
        [s fireByGun:g];
        [s fireByGun:g];
        [s fireByGun:g];
        [s fireByGun:g];

    }
    return 0;
}
