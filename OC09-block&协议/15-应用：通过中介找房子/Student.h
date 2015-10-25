//
//  Student.h
//  OC09-block&协议
//
//  Created by yezhimin on 15/10/24.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "findHouseProtocol.h"

@interface Student : NSObject
@property (nonatomic,strong) id<findHouseProtocol> delegate;
-(void)needHouse;
@end
