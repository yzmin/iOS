//
//  main.m
//  10-@property参数1
//
//  Created by yezhimin on 15/10/20.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        Car *car1 = [Car new];  // car1 = 1
        //@property 生成 set 方法
        [p setCar:car1]; // ---->  _car = car;   //car = 2
        [p driver];
        
        [car1 release];  //  car1 = 1
        //[p driver];//野指针
//        Car *car2 = [Car new];
//        [p setCar:car2];
//        [car2 release];
        [p setCar:car1];//此处没有报错   //  car1 = 1
        [p driver];
        [p release];
    }
    return 0;
}
