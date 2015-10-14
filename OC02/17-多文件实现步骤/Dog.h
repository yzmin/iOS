//
//  Dog.h
//  OC02
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

