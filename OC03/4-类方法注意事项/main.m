//
//  main.m
//  4-类方法注意事项
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BigYellowDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      //对象方法使用
        //创建对象
        BigYellowDog *byd = [BigYellowDog new];
        [byd eat:@" 香蕉 苹果"];
        
        //类方法
        [BigYellowDog eat:@" 肉包子"];
    }
    return 0;
}
