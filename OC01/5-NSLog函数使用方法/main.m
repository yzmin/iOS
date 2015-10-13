//
//  main.m
//  5-NSLog函数使用方法
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

/*
 1、NSLog 与 printf 之间的区别
    1）NSLog能自动换行，printf不能自动换行
    2）NSLog能输出时间，项目名称，printf不能输出任何信息
    3) NSLog函数的参数是一个NSString字符串对象，printf函数的参数是char类型的指针
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Hello, World! yzmin !!!");
        printf("Hello, World! yzmin !!!\n");
        printf("Hello, World! yzmin !!!\n");
        
        //C基本数据类型
        int a = 10;
        float f = 11.3f;
        double d = 333.3f;
        char ch = 'a';
        char *str = "yzmin";
        char *strcn = "叶志敏";
        
        //NSString 是OC的字符串类型， 是以%s 进行打印的
        NSString *str2 = @"yzmin_min";
        NSString *str2cn = @"叶志敏";
        
        //@"" 作用 将C语言字符串转化为OC字符串
        //1、OC能向下兼容C，NSLog 能以%s的格式输出英文字符串
        printf("%d,%.2f,%.2f,%c,%s\n",a,f,d,ch,str);
        NSLog(@"%d,%.2f,%.2f,%c,%s",a,f,d,ch,str);
        
        //2、NSLog 不能以%s的格式输出中文字符串
        printf("%s\n",strcn);
        //NSLog(@"=%s",strcn);
        
        //3.printf函数不支持以%@的格式打印NSString 类型的英文字符串
        //printf("%@\n",str2);
        NSLog(@"%@",str2);
        
        //4.printf函数不支持以%@的格式打印NSString 类型,无论是中文还是英文的
        //printf("%@\n",str2cn);
        NSLog(@"%@",str2cn);
        

    }
    return 0;
}
