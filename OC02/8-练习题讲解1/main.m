//
//  main.m
//  8-练习题讲解1
//
//  Created by yezhimin on 15/10/14.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    kColorBlack,kColorWhite,kColorYellow,kColorHua
}Color;
typedef enum{
    kSexWoman,kSexMan,kSexYao
}Sex;

//类的声明
@interface Dog : NSObject
{
    @public
    Color _color;//颜色
    int _speed;//速度
    Sex _sex;//性别
    float _weight;//体重
}
//吃
-(void)eat:(NSString *)foodName;
//叫
-(void)bark;
//跑
-(void)run;
//比较颜色
-(BOOL)compareWithDog:(Dog *)dog;
//比较速度
-(int)compareSpeed:(Dog *)dog;

@end

@implementation Dog
//吃
-(void)eat:(NSString *)foodName
{
    _weight += 0.5f;
    NSLog(@"小天 吃 %@,当前体重:%.2f",foodName,_weight);
}

-(void)bark
{
    NSLog(@"颜色:%d, 速度:%d, 性别:%d, 体重:%.2f",_color,_speed,_sex,_weight);
}

-(void)run
{
    _weight -= 0.5f;
    NSLog(@"当前速度:%d, 体重:%.2f",_speed,_weight);
}

-(BOOL)compareWithDog:(Dog *)dog
{
    if(_color == dog->_color)
        return YES;
    else
        return NO;
}

-(int)compareSpeed:(Dog *)dog
{
    return _speed - (dog->_speed);
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //创建对象
        Dog *d = [Dog new];
        d->_color = kColorBlack;
        d->_speed = 200;
        d->_sex = kSexWoman;
        d->_weight = 66.6f;
        
        [d eat:@"狗粮"];
        [d eat:@"榴莲"];
        [d bark];
        [d run];
        
        Dog *d2 = [Dog new];
        d2->_color = kColorYellow;
        d2->_speed = 150;
        d2->_sex = kSexWoman;
        d2->_weight = 56.6f;
        
        BOOL compareColor = [d compareWithDog:d2];
        NSLog(@"compareColor = %d",compareColor);
        
        int compareSpeed = [d compareSpeed:d2];
        NSLog(@"compareSpeed = %d",compareSpeed);
        
    }
    return 0;
}
