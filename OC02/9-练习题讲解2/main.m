//
//  main.m
//  9-练习题讲解2
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

#pragma mark - 狗类的声明
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

#pragma mark - 狗类的实现
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

#pragma mark - 人类的声明
@interface Person : NSObject
{
    @public
    NSString *_name;
    Dog *_dog;
}
//喂狗
-(void)feedWithDog:(NSString *)foodName;
//遛狗
-(void)walkWithDog;

@end

#pragma mark - 人类的实现
@implementation Person
-(void)feedWithDog:(NSString *)foodName
{
    [_dog eat:foodName];
}
-(void)walkWithDog
{
    [_dog run];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建狗
        Dog *d = [Dog new];
        d->_speed = 200;
        d->_color = kColorYellow;
        d->_sex = kSexWoman;
        d->_weight = 66.4;
        //创建人
        Person *p = [Person new];
        p->_name = @"某某";
        p->_dog = d;
        
        //喂狗
        [p feedWithDog:@"肉包子"];
        [p feedWithDog:@"蟠桃"];
        //遛狗
        [p walkWithDog];
    }
    return 0;
}
