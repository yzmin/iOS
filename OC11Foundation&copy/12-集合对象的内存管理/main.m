//
//  main.m
//  12-集合对象的内存管理
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

void test()
{
    Person *p = [Person new];//1
    [p retain];//2
    //规律1：
    //只要把对象放到数组中，就发现对象的引用计数＋1
    //规律2：
    //数组在销毁的时候，对对象发送了一次release消息
    //销毁的顺序：数组先释放，数组向其中的对象也发送release
    //[[[self alloc] init] autorelease];
    //NSArray *arr = [NSArray arrayWithObject:p];//2
    NSMutableArray *marr = [NSMutableArray array];
    
    [marr addObject:p];
    
    NSLog(@"p.retainCount = %lu",p.retainCount);//2
    [p release];//1
    //结论：
    //1）当对象被添加到数组中的时候，对象的引用计数＋1
    //2) 当数组销毁的时候，数组会向它其中的元素发送一次release消息
    //注意：数组被销毁了，它里面存储的对象不一定被销毁
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];//1
                NSMutableArray *arr = [[NSMutableArray alloc] init];
        [arr addObject:p];//2
        //[arr addObject:p];
        //如果对象从数组中移除了，对象的引用计数会被－1
        [arr removeObject:p];//-1 ＝ 1
        NSLog(@"%lu",p.retainCount); // 1
        
        [arr release];//1
        [p release];//1
        //数组被销毁了
        

    }
    return 0;
}
