//
//  main.m
//  14-NSArray与字符串
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //定义一个数组
        NSArray *arr = @[@1,@2,@3,@4,@5];//@表示把值转换为对象
        //需求：把数组中的元素用 "-" 链接起来
        //1-2-3-4-5
        NSString *str = [arr componentsJoinedByString:@"-"];
        NSLog(@"str = %@",str);
        
        //2）给一个字符串，分割成一个数组
        //400-800-12580 //取得400
        NSString *str2 = @"400-800-12580";
        NSArray *array = [str2 componentsSeparatedByString:@"-"];
        NSLog(@"first = %@,last = %@",[array firstObject],[array lastObject]);
        
        str2 = @"400-800-12580#400-888-11234";
        NSArray *arr1 = [str2 componentsSeparatedByString:@"#"];
        NSLog(@"arr1 = %@",arr1);
        for(NSString *str in arr1)
        {
            NSArray *arr2 = [str componentsSeparatedByString:@"-"];
            NSLog(@"arr = %@",arr2);
        }
        
    }
    return 0;
}
