//
//  main.m
//  8-ARC下多对象内存管理
//
//  Created by yezhimin on 15/10/22.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *byd = [Dog new];
        Person *p = [Person new];
        
        p.dog = byd;
        //1)在 @property (nonatomic,weak) Dog *dog;
        //byd = nil //Dog 对象会立即释放
        //因为该对象没有强指针指向了
        
        //1)在 @property (nonatomic,strong) Dog *dog;
        //byd = nil //
        byd = nil;
        
        
    }
    return 0;
}
