//
//  IPhone.h
//  OC03
//
//  Created by yezhimin on 15/10/15.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IPhone : NSObject
{
    NSString *_phoneNum;
    NSString *_msgContent;
}
-(void)setPhoneNum:(NSString *)phoneNum;
-(NSString *)phoneNum;

-(void)setMsgContent:(NSString *)msgContent;
-(NSString *)msgContent;

-(void)call;
-(void)sendMessage;
@end
