//
//  main.m
//  18-重写构造方法应用场景
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Soilder.h"

void test()
{
    Gun *ak47 = [Gun new];
    ak47.bulletCount = 3;
    Soilder *s1 = [Soilder new];
    s1.gun = ak47;
    [s1 fireByGun];
    
    Gun *ak472 = [Gun new];
    ak472.bulletCount = 3;
    Soilder *s2 = [Soilder new];
    s2.gun = ak472;
    [s2 fireByGun];

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Soilder *s = [Soilder new];
        [s fireByGun];
        
        Soilder *s1 = [Soilder new];
        [s1 fireByGun];
        
    }
    return 0;
}
