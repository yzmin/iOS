//
//  Car.h
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    int _speed;//实例变量
    int a;
}
@property int speed;//生成set和get方法的声明
-(void)test;

@end
