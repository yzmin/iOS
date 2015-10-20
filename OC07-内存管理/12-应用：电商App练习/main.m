//
//  main.m
//  12-应用：电商App练习
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Seller.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Seller *s = [[Seller alloc] init];
        Goods *g = [[Goods alloc] init];
        
        s.goods = g;
        
        
        [g release];
        [s release];
    }
    return 0;
}
