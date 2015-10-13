//
//  main.m
//  16-有参方法声明实现及调用－练习题
//
//  Created by yezhimin on 15/10/13.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 􏱊􏲬􏰒􏲭􏲮􏲯􏲜􏰍􏱳􏱣􏰑􏱹􏱦􏱖􏰏􏰐􏰐
 􏱅􏱆􏰒􏰐
 􏰐 􏲰􏲱􏰍􏰔􏱗􏱹􏰴􏱹􏲲􏰐􏰏􏰸􏰐􏲳􏲴􏰍􏰔􏰼􏰦􏱴􏱖􏰏􏰸􏰐􏰔􏱗􏲀􏰭􏰐
 􏲵􏲶􏰒􏰐
 􏰐 􏲷􏲸􏲹􏲜􏱱􏲺􏰍􏲻􏱔􏱹􏰭􏱘􏰵􏲼􏱣􏰑􏱹􏱦􏱖􏰏􏰸􏲽􏲾􏲿􏰍􏱗􏲻􏰴􏰴􏱣􏰑􏱹􏱦􏱖􏰏􏰸􏰐􏰚􏳀 􏱱􏰐􏰍􏰼􏱖􏱦􏲏􏰵􏱖􏰼􏰼􏲻􏲎􏱖􏰏
 􏱋􏱌􏳁􏱊􏰸􏳂􏰒
 1􏰏􏲷􏲸􏲹􏲜􏱱􏲺
 
 2􏰏􏲽􏲾􏲿􏳃10086
 3􏰏􏳃10086􏰚􏳀􏱱􏲤􏳄􏳅􏱇􏳆􏳇􏲾􏲿􏲒􏳈􏳉
 */

#import <Foundation/Foundation.h>
typedef enum
{
    kColorWhite,
    kColorGold,
    kColorBlack
}Color;

//类的声明
@interface IPhone : NSObject
{
    @public
    //定义实例变量
    Color _color;//颜色
    float _size;//大小
    NSString *_cpu;//cpu
    
}
//方法的声明
//查看本机信息
-(void)aboutMyPhone;
//打电话
-(void)callPhone:(NSString *)telNum;
//发短信
-(void)sendMessage:(NSString *)telNum andContent:(NSString *)content;
@end
//类的实现
@implementation IPhone
//查看本机信息
-(void)aboutMyPhone
{
    NSLog(@"颜色:%d, 大小:%.2f, cpu:%@",_color,_size,_cpu);
}

-(void)callPhone:(NSString *)telNum
{
    NSLog(@"给%@ 打电话",telNum);
}

-(void)sendMessage:(NSString *)telNum andContent:(NSString *)content
{
    NSLog(@"给%@ 发短信，短信内容:%@",telNum,content);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        IPhone *ip = [IPhone new];
        //给实例变量赋值
        ip->_color = kColorGold;
        ip->_size = 7.5f;
        ip->_cpu = @"A10";
        
        //调用方法
        [ip aboutMyPhone];
        [ip callPhone:@"10086"];
        [ip sendMessage:@"10086" andContent:@"你好"];
        
    }
    return 0;
}
