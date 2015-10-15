//
//  Car.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Person.h"

@interface Car : NSObject
{
    @public
    int _lunNum;
}
-(void)run;
+(void)run:(int)lunNum :(Person *)person;
-(void)test:(Car *)car;
+(void)test;

@end
