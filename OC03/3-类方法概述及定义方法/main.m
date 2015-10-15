//
//  main.m
//  3-类方法概述及定义方法
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Caculator2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Caculator2 *cal = [Caculator2 new];
        
        //类方法的调用方式
        // [类名 类方法名];
        int ret = [Caculator2 add:10 andNum2:34];
        ret = [Caculator2 sub:22 andNum2:10];
        ret = [Caculator2 mul:12 andNum2:10];
        float f = [Caculator2 div:100 andNum2:3];
        NSLog(@"%d",ret);
        NSLog(@"%.2f",f);
        
        float av = [Caculator2 avg:10 andNum2:10];
        NSLog(@"%f",av);
    }
    return 0;
}
