//
//  Person.h
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
//遵守协议的步骤：
//1）导入头文件
#import "baseProtocol.h"
//#import "workProtocol.h"
//2）遵守协议
//3）实现方法

//2）遵守协议
//结论：当我们遵守了某个协议后，就相当于这个类有了某个协议的方法的声明
@interface Person : NSObject <baseProtocol>//,workProtocol

@end
