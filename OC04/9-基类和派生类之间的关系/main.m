//
//  main.m
//  9-基类和派生类之间的关系
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BigYellowDog.h"
#import "JunDog.h"
#import "Cat.h"

/*
 重写：
 当子类继承了父类，重新实现从父类继承过来的方法

 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal *ani = [Animal new];
        [ani eat];
        [ani run];
        
        Dog *heipi = [Dog new];
        [heipi eat];//继承自 Animal
        [heipi run];
        [heipi lookHome];
        
//        BigYellowDog *byd = [BigYellowDog new];
//        //        [byd eat];
//        //        [byd run]; //父父类
//        //        [byd lookHome]; //父类
//        [byd catchMouse]; //自身
//        
//        Cat *cat = [Cat new];
//        [cat run];//Animal
//        [cat eat];
//        [cat catchMouse];//Cat
//        
//        JunDog *jd = [JunDog new];
//        [jd run];//Animal
//        [jd eat];
//        [jd zhaDiaoBao];
        
    }
    return 0;
}

