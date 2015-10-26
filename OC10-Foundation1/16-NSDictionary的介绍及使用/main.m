
//  main.m
//  16-NSDictionary的介绍及使用
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSDictionary 不可变的，一旦创建，内容就不能修改。
        //1) 创建空字典
        NSDictionary *dict1 = [NSDictionary dictionary];
        NSLog(@"%@",dict1);
        //  key   value
        //  zs     张三
        //2) 创建只有一组键值对的字典
        NSDictionary *dict2 = [NSDictionary dictionaryWithObject:@"张三" forKey:@"zs"];
        NSLog(@"%@",dict2);
        //3) 创建多组键值对的字典
        //value，key
        NSDictionary *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:@"valus1",@"key1",@"valus2",@"key2",nil];
        //注意：字典的key 值 和 value值，都必须是对象。
        NSLog(@"%@",dict3);//输出一个字典
        
        //4）快速创建一个字典
        //@{,key值:value值,,,,};
        //key不能重复，如果重复不会报错，
        //如果重复了，最后添加的将不能保存到字典中
        NSDictionary *dict4 = @{@"zs":@"zhaosi",@"zs":@"zhangsan",@"ls":@"lisi",@"mz":@"mazi"};
        NSLog(@"%@",dict4);
        //5) 获取字典的长度
        NSLog(@"%ld",dict4.count);
        //6 根据key值取出value值
        // zs   zhaosi
        NSString *str = [dict4 objectForKey:@"zs"];
        NSLog(@"str = %@",str);
        //7) 字典的遍历问题
        //第一步：获取所有的key
        //第二步：根据key获取value
        for(NSString *key in dict4)
        {
            NSString *str = [dict4 objectForKey:key];
            NSLog(@"str = %@",str);
        }
        //使用block遍历字典
        [dict4 enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"%@:%@",key,obj);
        }];
    }
    return 0;
}
