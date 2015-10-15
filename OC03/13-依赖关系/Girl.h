//
//  Girl.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPhone.h"

@interface Girl : NSObject
//给土豪打电话
-(void)callPhoneToTuHao:(IPhone *)iphone;
//给土豪发短信
-(void)sendMessageToTuHao:(IPhone *)iphone;
@end
