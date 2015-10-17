//
//  Car.h
//  OC04
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    @private
    int _speed;
}
-(void)run;
-(void)eat;
@end
