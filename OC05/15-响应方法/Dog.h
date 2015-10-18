//
//  Dog.h
//  OC05
//
//  Created by yezhimin on 15/10/17.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
-(void)eat:(NSString *)foodName;
-(void)eat:(NSString *)foodName andDogName:(NSString *)dogName;
-(void)run;
@end
