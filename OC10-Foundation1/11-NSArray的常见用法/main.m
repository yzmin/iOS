//
//  main.m
//  11-NSArray的常见用法
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
void test()
{
    NSArray *arr3 = [NSArray arrayWithObjects:@"one",@"twe",@1,@"three",nil];
    NSLog(@"arr3 = %@",arr3);
    //1) 获得数组长度,count 获取元素的个数
    NSLog(@"%ld",arr3.count);
    //2) 根据下标，获取下标对应的对象
    NSLog(@"%@",[arr3 objectAtIndex:3]);
    //3 返回元素的下标
    NSUInteger loc = [arr3 indexOfObject:@"three"];
    NSLog(@"%ld",loc);
    //4) 数组中是否包含了某个元素
    if([arr3 containsObject:@"one"])
    {
        NSLog(@"包含此元素");
    }
    else
    {
        NSLog(@"不包含此元素");
    }

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //用简化的方式，来定义和访问数组元素
        //1) 用简化的方式，定义数组
        //格式：@[数组元素];
        NSArray *arry = @[@"1",@"one",@"3",@4,@"one"];
        NSLog(@"arr = %@",arry);
        
        NSString *str = [arry objectAtIndex:2];
        NSLog(@"%@",str);
        
        //2)用简化的方式访问数组元素
        str = arry[1]; //类似C语言形式的访问
        NSLog(@"%@",str);

    }
    return 0;
}
