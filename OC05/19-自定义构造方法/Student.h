//
//  Student.h
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Person.h"

@interface Student : Person
@property int sno;
// 年龄 姓名 sno
-(instancetype)initWith:(NSString *)name andAge:(int)age andSno:(int)sno;
@end
