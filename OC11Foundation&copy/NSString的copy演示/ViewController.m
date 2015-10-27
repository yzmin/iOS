//
//  ViewController.m
//  NSString的copy演示
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

void test()
{
    //创建一个字符串
    NSString *str = @"abc";
    NSLog(@"str = %@ addr = %p",str,str);
    // 可变                   不可变
    
    NSString *str2 = [str copy];
    NSLog(@"%ld",str2.length);
    NSLog(@"str2 = %@ addr2 = %p",str2,str2);
    //不可变的对象，copy 产生的副本也是不可变的
    //不可变的对象， mutableCopy 产生的是可变的
    
    //str3 是str 一个可变副本
    NSMutableString *str3 = [str mutableCopy];//不可变副本
    [str3 appendString:@"xxx"];
    NSLog(@"str3 = %@ addr3 = %p",str3,str3);
}

void test2()
{
    //可变对象 copy         不可变
    //可变对象 mutableCopy    可变
    
    //可变与不可变都需要对等赋值
    
    NSMutableString *str = [NSMutableString string];
    [str appendString:@"abc"];
    
    
    NSMutableString *str2  = [str mutableCopy];
    [str2 appendString:@"xxxx"];
    NSLog(@"str2 = %@",str2);
    
    NSString *str3 = [str copy];
    NSLog(@"str3 = %@",str3);

}

void test3()
{
    //创建一个字符串
    NSString *str = [NSString stringWithFormat:@"abc"];
    NSLog(@"str.retainCount = %lu",str.retainCount); //1
    NSLog(@"str addr = %p",str);
    
    //不可变的对象，进行了copy以后,没有重新分配内存空间
    //这是浅拷贝，只是拷贝了地址，并没有真正的分配新的内存空间
    //源对象引用计数 ＋1
    //副本对象指向源对象，引用计数跟源对象引用计数一样
    NSString *str2 = [str copy];//产生一个不可变的副本
    NSLog(@"str2 addr = %p",str2);
    NSLog(@"str2.retainCount = %lu",str2.retainCount);  //2
    NSLog(@"str.retainCount = %lu",str.retainCount); //2
}

void test4()
{
    //创建一个字符串
    NSString *str = [NSString stringWithFormat:@"abc"];
    NSLog(@"str.retainCount = %lu",str.retainCount); //1
    NSLog(@"str addr = %p",str);
    
    //mutableCopy 分配一个新的空间
    //这是一个深拷贝：
    //1）开辟一个新的空间，存储副本对象
    //2) 副本对象的引用计数为 1
    NSMutableString *str2 = [str mutableCopy];//产生一个可变的副本
    NSLog(@"str2 addr = %p",str2);
    NSLog(@"str2.retainCount = %lu",str2.retainCount);  //2
    NSLog(@"str.retainCount = %lu",str.retainCount); //2
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
