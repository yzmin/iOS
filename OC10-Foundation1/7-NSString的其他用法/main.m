//
//  main.m
//  7-NSString的其他用法
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//字符串转换为各种数值
void test()
{
    //str 是一个对象
    NSString *str = @"1";
    NSString *str2 = @"3.14";
    
    //基本数据类型
    int a = 10;
    //str @"1" 转换成 1
    int b = [str intValue];//@"1" --> 1
    b = [str2 intValue];//@"3.14" --> 3
    
    a = a + b;//13
    //这是把 str2转换为 float值
    float f1 = [str2 floatValue];
    f1 = f1 + a;
    //把 str2 转换为 double 值
    double d1 = [str2 doubleValue];
    // 3.14 + 3
    d1 = d1 + b;
    NSLog(@"d1 = %.2f",d1);
    NSLog(@"a = %d,f1 = %.2f",a,f1);

}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //OC的字符串 和 C 的字符串互相转换问题
        //cahr*   NSString
        //1） C ----> OC 对象
        char *s = "yezhiming";
        printf("%s\n",s);
        //思路：创建一个OC的字符串对象，用C语言的字符串创建
        NSString *str = [NSString stringWithUTF8String:s];
        NSLog(@"%@",str);
        
        //2) OC对象 ---> C的字符串
        NSString *str2 = @"yzmin";
        //把str2 转换 C语言的字符串
        const char *s1 = [str2 UTF8String];
        printf("%s",s1);
        
        //@" hello ";
        NSString *str3 = @"     hello     ";
        str3 = [str3 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        NSLog(@"%@",str3);
    }
    return 0;
}
