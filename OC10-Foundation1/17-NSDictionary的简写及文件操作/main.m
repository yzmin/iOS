//
//  main.m
//  17-NSDictionary的简写及文件操作
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

void test()
{
    //简写形式定义一个字典
    NSDictionary *dict = @{@"zbz":@"zhangbozhi",@"cgx":@"chenguanxi",@"lzla":@"hello"};
    //2）用简写形式，获取key对应的value
    NSLog(@"%@",dict[@"zbz"]);
    
    //3) 把字典保存到文件中
    BOOL isWrite = [dict writeToFile:@"/Users/yezhimin/Desktop/dict.plist" atomically:YES];
    if(isWrite)
    {
        NSLog(@"写入成功!");
    }
    //4) 从文件读取字典
    NSDictionary *readDict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/yezhimin/Desktop/dict.plist"];
    NSLog(@"%@",readDict);
}

void test2()
{
    //省市
    //辽宁省  大连
    //       沈阳
    //河北省  保定
    //       石家庄
    NSArray *lnArr = [NSArray arrayWithObjects:@"dalian",@"shenyan", nil];
    NSArray *hbArr = [NSArray arrayWithObjects:@"baoding",@"shijiazhuang", nil];
    
    NSDictionary *citys = [NSDictionary dictionaryWithObjectsAndKeys:lnArr,@"ln",hbArr,@"hb", nil];
    NSLog(@"%@",citys);
    [citys writeToFile:@"/Users/yezhimin/Desktop/dict.plist" atomically:YES];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *citysDict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/yezhimin/Desktop/dict.plist" ];
        
        [citysDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            //NSLog(@"key:%@, value:%@",key,obj);
            //NSArray *arr = obj;
            for(NSString  *str in obj)
            {
                NSLog(@"city = %@",str);
            }
            //获取每个数组
            NSArray *arr = citysDict[@"ln"];
            NSLog(@"%@",[arr lastObject]);
        }];
    }
    return 0;
}
