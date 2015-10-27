//
//  main.m
//  8-NSNumber的使用
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
    NSNumber 是OC中处理数字的一个类
    如何处理：
        把 int / float /double --->包装成一个对象
    使用NSNumber的好处：
        可以把基本数据类型的数据，保存到数组 或者 字典中
    
    如何使用NSNumber?
        1) int  --->   obj
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 10;
        int x = 200;
        float f1 = 3.23f;
        double d1 = 3.14f;
        //numberWithInt  把int   转换为NSNumber对象
        NSNumber *intObj = [NSNumber numberWithInt:a];
        NSMutableArray *array = [NSMutableArray arrayWithObjects:intObj, nil];
        NSLog(@"%@",array);
        
        //float  转换  NSNumber
        NSNumber *floatObj = [NSNumber numberWithFloat:f1];
        [array addObject:floatObj];
        NSLog(@"%@",array);
        
        //double ---> NSNumber
        NSNumber *dObj = [NSNumber numberWithDouble:d1];
        //把对象添加到数组中
        [array addObject:dObj];
        [array addObject:@(x)];//@(变量名) 把x变量名转换为NSNumber对象
        [array addObject:@18];//@数值  把数值包装成对象
        NSLog(@"%@",array);
        
        //数组的第一个元素和第二元素相加
        //array[0] + array[1];
        //1） 取出数组的元素
        //2） 把数组元素转化为基本数据类型的数据
        NSNumber *n1 = array[0];
        int a1 = [n1 intValue];//获取对象的整形值
        NSNumber *n2 = array[1];
        float f2 = [n2 floatValue];
        a1 = [array[0] intValue] + [array[1] floatValue];
        NSLog(@"%.2f,%d",a1+f2,a1);
    }
    return 0;
}
