//
//  Ticket.h
//  OC06综合项目
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Common.h"

@interface Ticket : Common
//座位排数，座位号，开始时间，地点
@property int rowNum;
@property int colNum;
@property NSString *startTime;
@property NSString *place;

-(void)showTicket;
@end
