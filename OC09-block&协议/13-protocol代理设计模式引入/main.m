//
//  main.m
//  13-protocol代理设计模式引入
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaoMu.h"
#import "Baby.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BaoMu *baomu = [BaoMu new];
        Baby *baby = [Baby new];
        baby.bm = baomu;
        baby.blood = 30; //[baby setBlood:30]
        baby.sleep = 20;
        
        [baby wantEat];
        [baby wantSleep];
    }
    return 0;
}
