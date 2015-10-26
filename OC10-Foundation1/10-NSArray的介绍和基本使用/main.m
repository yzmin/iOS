//
//  main.m
//  10-NSArray的介绍和基本使用
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSArray特点：
        //一旦创建成功，内容不可改变
        //只能存放OC对象
        
        //1) 创建一个空数组
        //数组永远为空，不可以添加元素
        NSArray *arr1 = [NSArray array];
        NSLog(@"arr1 = %@",arr1);
        
        //2) 创建数组，只有一个元素
        NSArray *arr2 = [NSArray arrayWithObject:@"1"];
        NSLog(@"arr2 = %@",arr2);
        
        //3）创建数组，有多个元素(常见)
        NSArray *arr3 = [NSArray arrayWithObjects:@"one",@"twe",@1,nil];
        NSLog(@"arr3 = %@",arr3);
        
        //4) 调用对象方法，创建数组
        //nil 表示数组赋值结束
        //nil Nil NULL NSNULL
        NSArray *arr4 = [[NSArray alloc] initWithObjects:@"three",[NSNull null],@"four",nil];
        NSLog(@"arr4 = %@",arr4);
        
        //5) 用一个数组可以创建另外一个数组
        NSArray *arr5 = [NSArray arrayWithArray:arr3];
        NSLog(@"arr5 = %@",arr5);
    }
    return 0;
}
