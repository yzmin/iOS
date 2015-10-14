//
//  main.m
//  2-应用:类的创建练习
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

//类的声明
@interface Person : NSObject
{
    //定义实例变量
    @public
    NSString *_name;
    int _age;
    float _weight;
}
//方法的声明
-(void)eat:(NSString *)foodName;
-(void)walk:(int)num;

@end

@implementation Person
-(void)eat:(NSString *)foodName
{
    _weight += 0.6f;
    NSLog(@"%@ 吃 %@, 当前体重：%.2f",_name,foodName,_weight);
}
-(void)walk:(int)num
{
    //256 256 / 100 * 0.2
    _weight -= num / 100 * 0.2f;
    NSLog(@"%@ 走了 %d步，当前体重：%.2f",_name,num,_weight);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        Person *p = [Person new];
        p->_name = @"小白";
        p->_age = 24;
        p->_weight = 66.5f;
        
        [p eat:@"香蕉"];
        [p eat:@"苹果"];
        [p walk:256];
        
        
    }
    return 0;
}
