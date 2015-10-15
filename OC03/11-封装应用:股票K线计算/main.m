//
//  main.m
//  11-封装应用:股票K线计算
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KLine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        KLine *kLine = [[KLine alloc] init];
        //设置价格
        [kLine setMaxPrice:28.42f];
        [kLine setMinPrice:8.53f];
        
        //28.42  0  14.21
        NSLog(@"max:%.2f min:%.2f avg:%.2f",[kLine maxPrice],[kLine minPrice],[kLine avgPrice]);
    }
    return 0;
}
