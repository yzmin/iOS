//
//  main.m
//  4-NSFileManager用法深入（二）
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建文件管理对象
        NSFileManager *fm = [NSFileManager defaultManager];
        //1) 如何创建目录  @"/Users/yezhimin/Desktop/aaa"
        NSString *createDirPath =@"/Users/yezhimin/Desktop/aaa/ccc/bbb/love.txt";
        
        //fm createDirectoryAtPath:@"路径" withIntermediateDirectories:（YES创建路径的时候，自动创建路径中缺少的目录\NO不会创建缺少的目录） attributes:文件属性 error:错误对象
//        BOOL isYES = [fm createDirectoryAtPath:createDirPath withIntermediateDirectories:YES attributes:nil error:nil];
//        if(isYES)
//        {
//            NSLog(@"创建成功！");
//        }
        
        //2) 如何创建文件
        NSString *str = @"每当我错过了一个女孩，我就向山上放一块砖，于是有长城";
        //writeToFile
        //fm createFileAtPath:@"路径" contents:NSData类型的数据 attributes:文件的属性字典
        //NSData 是一个处理二进制数据的类
        //NSString ----> NSData
//        NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
        BOOL isYES ;
//        isYES = [fm createFileAtPath:createDirPath contents:data attributes:nil];
//        NSLog(@"%d",isYES);
        //3) 如何copy文件
//        NSString *targetPath= @"/Users/yezhimin/Desktop/aaa/ccc/love.txt";
//        [fm copyItemAtPath:createDirPath toPath:targetPath error:nil];
        
        //如何移动文件
         NSString *targetPath= @"/Users/yezhimin/Desktop/aaa/love.txt";
//        [fm moveItemAtPath:createDirPath toPath:targetPath error:nil];
        
        //如何删除文件
        [fm removeItemAtPath:targetPath error:nil];
    }
    return 0;
}
