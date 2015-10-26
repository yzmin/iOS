//
//  main.m
//  12-NSArray的遍历方法
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //int a[10]={1,2,3,4,5,6,7,8,9,0};
        NSArray *arr = @[@"one",@"two",@"three",@"four"];
        //对数组进行遍历
        //1）普通的方式，通过下标访问
        for(int i = 0; i<arr.count;++i)
        {
            NSLog(@"-> %@",arr[i]);
        }
        //2) 快速枚举法
        for(NSString *str in arr)
        {
            NSLog(@"--> %@",str);
        }
        //3） 使用block的方式，进行访问
        //数组元素   元素下标    是否停止 stop YES 会停止，NO 不会停止
        [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            if(idx == 2)
            {
                *stop = YES;//停止 类似 break;
            }
            else
            {
                NSLog(@"idx = %ld,obj = %@",idx,obj);
            }
            
        }];
    }
    return 0;
}
