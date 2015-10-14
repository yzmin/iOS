//
//  main.m
//  15-NSString字符串长度计算方法
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //-(int)length；计算方法 length计算字符串的长度
        //在OC中，无论是英文还是中文都是占用一个字节
        //1、计算英文字符串
        NSString *s1 = @"aaaaab";
        int a = [s1 length];
        NSLog(@"length = %d",a);
        
        //2、中文字符串
        NSString *s2 = @"学挖掘机那家强";
        int b = [s2 length];
        NSLog(@"length = %d",b);
        
        //C语言char 类型
        char *s3 = "学挖掘机那家强OC";
        int c = strlen(s3);
        NSLog(@"%d",c);
        
        //中英混合
        NSString *s4 = @"你好abc";
        int d = [s4 length];
        NSLog(@"%d",d);
    }
    return 0;
}
