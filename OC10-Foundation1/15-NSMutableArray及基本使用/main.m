//
//  main.m
//  15-NSMutableArray及基本使用
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //数组的使用
        //1）创建数组
        //i. 空数组
        NSMutableArray *arr1 = [NSMutableArray array];
        //ii. 创建的时候初始化一个元素
        NSMutableArray *arr2 = [NSMutableArray arrayWithObject:@"one"];
        //iii.创建数组的时候，初始化对个元素
        NSMutableArray *arr3 = [NSMutableArray arrayWithObjects:@"one",@"two",@3, nil];
        //iv.创建一个数组，并且指定长度
        NSMutableArray *arr4 = [NSMutableArray arrayWithCapacity:5];
        
        //2) 添加元素
        [arr1 addObject:@"fengjie"];
        NSLog(@"%p",arr1);
        NSLog(@"%@",arr1);
        NSLog(@"%p",arr1);
        //插入元素到指定位置
        [arr1 insertObject:@"zbz" atIndex:1];
        NSLog(@"%@",arr1);
        //3) 删除元素
        //根据对象内容删除
        //[arr1 removeObject:@"zbz"];
        //根据位置删除
        //[arr1 removeObjectAtIndex:1];
        //全部删除
        [arr1 removeAllObjects];
        NSLog(@"%@",arr1);
        
        //4) 修改元素
        //two --> four
        [arr3 replaceObjectAtIndex:1 withObject:@"four"];
        NSLog(@"%@",arr3);
        
        //直接赋值 four --> five
        arr3[1] = @"five";
        NSLog(@"%@",arr3);
        
        //5) 查找元素
        BOOL isSearch = [arr3 containsObject:@"onef"];
        NSLog(@"%d",isSearch);
        
        //6) 交换元素
        //1 2 3 4 5 6
        //6 5 4 3 2 1
        NSMutableArray *arr5 = [NSMutableArray arrayWithObjects:@1,@2,@3,@4,@5,nil];
        //可以交换数组元素
        [arr5 exchangeObjectAtIndex:0 withObjectAtIndex:4];
        NSLog(@"%@",arr5);
    }
    return 0;
}
