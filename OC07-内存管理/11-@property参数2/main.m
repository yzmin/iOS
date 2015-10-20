//
//  main.m
//  11-@property参数2
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个对象
        Car *car1 = [Car new];
        car1.lunzi = 4;//点语法，会替换成 [car1 setLunzi:4];
        NSLog(@"lunzi = %d",car1.lunzi);//[car1 lunzi];
        
//        car1.speed ＝ 250;//[car1 setSpeed:250]
        NSLog(@"speed = %d",car1.speed);//get的方法
        
        car1.color = 20;
        [car1 run];
//        car1.success = 34;
        [car1 iSSuccess:28];
        [car1 run];
        NSLog(@"success = %d",car1.success);
        
    }
    return 0;
}
