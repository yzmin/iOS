//
//  Cinema.h
//  OC06综合项目
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieTicket.h"
#define LEN 5
#define ROW 7
#define COL 15

@interface Cinema : NSObject
{
    //电影院有很多的电影票
    //指针数组
    //数组的每一个元素都是，MovieTocket类型的对象
    MovieTicket *tickets[LEN];//票的集合
}
//名称，电影票集合
@property NSString *cinemaName;

-(instancetype)initWithCinemaName:(NSString *)cinemaName;

//行为
//开始购票
-(void)startBuyTicket;

//显示热映的信息
-(void)list;

//选择一部电影
-(void)selectMovie;

//选择排数
-(void)selectRow;

//选择列数
-(void)selectCol;

//确认购票，并且付款
-(void)pay;

//购票成功，打印票
-(void)Print_ticket;

@end
