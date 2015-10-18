//
//  Soilder.h
//  OC05
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

@interface Soilder : NSObject
@property Gun *gun; //关联关系
-(void)fireByGun;
@end
