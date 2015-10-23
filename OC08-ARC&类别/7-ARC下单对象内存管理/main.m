//
//  main.m
//  7-ARC下单对象内存管理
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //在ARC下对象释放的判断依据：对象没有强指针指向
        //对象会立即释放内存空间
        //bigBen 强指针（指针默认的都是强指针)
        Car *bigBen = [Car new];
        //定义另外一个强指针指向
        //__strong 修饰符，修饰这个指针是一个强指针，可以不写
        //__weak          修饰的这个指针是弱指针
        //__strong Car *bmw = bigBen;
        __weak Car *bmw2 = bigBen;
        NSLog(@"bigBen = %@,bwm2 = %@",bigBen,bmw2);
        //bigBen的指向发生改变，对于Car对象来说没有强指针指向了，所以要释放对象
        bigBen = nil;
        //要释放 1）bigBen 是强指针，重新指向其他内容了，对于对象来说没有强指针指向了
        //      2）弱指针，赋值为 nil
        
        NSLog(@"bigBen = %@,bwm2 = %@",bigBen,bmw2);
        [bmw2 run];   // [nil run];
        [bigBen run]; // [nil run];
        
        
        
        NSLog(@"xxxxxxxx");
        
    }
    return 0;
}
