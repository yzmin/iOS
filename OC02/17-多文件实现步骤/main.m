//
//  main.m
//  17-多文件实现步骤
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建狗
        Dog *d = [Dog new];
        d->_speed = 200;
        d->_color = kColorYellow;
        d->_sex = kSexWoman;
        d->_weight = 66.4;
        //创建人
        Person *p = [Person new];
        p->_name = @"某某";
        p->_dog = d;
        
        //喂狗
        [p feedWithDog:@"肉包子"];
        [p feedWithDog:@"蟠桃"];
        //遛狗
        [p walkWithDog];
    }
    return 0;
}

