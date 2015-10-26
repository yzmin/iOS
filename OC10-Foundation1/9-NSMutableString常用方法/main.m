//
//  main.m
//  9-NSMutableString常用方法
//
//  Created by yezhimin on 15/10/25.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//可变字符串的常见方法
void test()
{
    NSMutableString *str = [NSMutableString string];
    //1）appendFormat: 格式化的添加字符串
    //                  0123456789
    [str appendFormat:@"http://www.baidu.com/%d",100];
    NSLog(@"str = %@",str);
    
    //2）删除字符串一部分内容
    [str deleteCharactersInRange:NSMakeRange(3,4)];
    NSLog(@"str = %@",str);
    //3) 插入一个字符串
    [str insertString:@"p://" atIndex:3];
    NSLog(@"str = %@",str);
    //4) 替换字符串的一部分内容
    [str replaceCharactersInRange:NSMakeRange(11,5) withString:@"yezhimin"];
    NSLog(@"str = %@",str);

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //始可变的字符串赋值一个不可变的值
        //错误：
        //1)给可变的字符串赋值不可变的值
        //NSMutableString = NSString
        NSMutableString *str = @"abc";
        [str appendString:@"xxxxx"];
        
        NSMutableString *str1 =[NSMutableString stringWithFormat:@"abc"];
        //string 把原来字符串的内容给覆盖了
        str1.string=@"";//给空覆盖了
        [str1 appendString:@"xxxxxxx"];
        NSLog(@"str1 = %@",str1);
        

    }
    return 0;
}
