//
//  main.m
//  18-NSMutableDictionary介绍和使用
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1) 可变字典的创建
        NSMutableDictionary *dict1 = [NSMutableDictionary dictionary];//创建空字典
        NSMutableDictionary *dict2 = [NSMutableDictionary dictionaryWithCapacity:5];
        
        //2) 添加元素
        [dict1 setValue:@"lisi" forKey:@"ls"];//如果key值重复，只能添加一次
        [dict1 setValue:@"zhaosi" forKey:@"ls"];
        [dict1 setValue:@"liuneng" forKey:@"ln"];
        NSLog(@"%@",dict1);
        //3) 删除元素
        //[dict1 removeObjectForKey:@"ls"];
        //[dict1 removeAllObjects];
        NSLog(@"%@",dict1);
        //4）修改元素
        [dict1 setObject:@"lisi" forKey:@"ls"];
        dict1[@"ls"] = @"xxxxxxx";//简写形式
        NSLog(@"%@",dict1);
        //5）查找元素
        NSArray *arr = [dict1 allKeys];
        if([arr containsObject:@"ls"])
        {
            NSLog(@"存在ls的key");
        }
    }
    return 0;
}
