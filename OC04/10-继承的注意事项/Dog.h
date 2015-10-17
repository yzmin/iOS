//
//  Dog.h
//  OC04
//
//  Created by yezhimin on 15/10/16.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Animal.h"

//建立继承关系
// Dog －－－》 Animal
//1）导入要继承的那个类的头文件
//2）修改当前类的代码
// @interface 类名 : 父类名
@interface Dog : Animal
//从Animal 继承了 eat run 方法的声明
-(void)lookHome;//看家
@end
