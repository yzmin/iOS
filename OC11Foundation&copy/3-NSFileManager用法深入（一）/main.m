//
//  main.m
//  3-NSFileManager用法深入（一）
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建文件对象
        NSString *filePath = @"/Users/yezhimin/Desktop/yzmin.txt";
        
        NSString *dirPath = @"/Users/yezhimin/Desktop/yzmin";
        NSFileManager *fm = [NSFileManager defaultManager];
        
        //1）如何获取文件的信息（属性）
        NSDictionary *dict = [fm attributesOfItemAtPath:filePath error:nil];
        NSLog(@"%@",dict);
        NSLog(@"%@,%@",[dict objectForKey:@"NSFileOwnerAccountName"],dict[@"NSFileOwnerAccountName"]);
        
        //2）获取指定目录下文件及子目录
        //使用递归的方式，获取当前目录及子目录下的所有的文件及文件夹
        NSArray *subArr = [fm subpathsAtPath:dirPath];
        NSLog(@"%@",subArr);
        //使用非递归的方式获取的  subpathsOfDirectoryAtPath
        subArr = [fm subpathsOfDirectoryAtPath:dirPath error:nil];
        NSLog(@"%@",subArr);
        
        //3）获取制定目录下的文件及目录信息（不在获取后代路径）
        subArr = [fm contentsOfDirectoryAtPath:dirPath error:nil];
        NSLog(@"%@",subArr);
    }
    return 0;
}
