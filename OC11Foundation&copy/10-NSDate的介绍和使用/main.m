//
//  main.m
//  10-NSDate的介绍和使用
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//
/*
 NSDate 是OC中提供日期时间处理的类
 1）获取当前的时间
    NSDate *d1 = [NSDate date];//创建一个日期时间对象
 
 2）格式化显示时间
 
 3）计算时间（）
 
 4）日期时间对象的使用
 */

#import <Foundation/Foundation.h>

void test()
{
    //创建一个日期时间
    NSDate *d1 = [NSDate date];
    // 0时区的时间，北京在东8区
    //当前时间 ＋8 小时，得到的就是现在的时间
    NSLog(@"%@",d1);
    
    //格式化日期：2015年10月26日 22:48:30
    //2015-10-26 22:55:25
    NSDateFormatter *formatter = [NSDateFormatter new];
    //设置日期的显示格式的
    //yyyy 表示四位的年份
    //MM 表示2位的月份
    //dd 表示2位的天数
    //HH 表示24小时制的小时 hh -12小时制
    //mm 表示2位的分钟数
    //ss 表示2位的秒数
    formatter.dateFormat=@"yyyy年MM月dd日 hh:mm:ss";
    formatter.dateFormat=@"yyyy-MM-dd hh:mm:ss";
    //格式化日期
    NSString *dateStr = [formatter stringFromDate:d1];
    NSLog(@"%@",dateStr);
}

void test2()
{
    NSDateFormatter *formatter = [NSDateFormatter new];
    //设置日期的显示格式的
    //yyyy 表示四位的年份
    //MM 表示2位的月份
    //dd 表示2位的天数
    //HH 表示24小时制的小时 hh -12小时制
    //mm 表示2位的分钟数
    //ss 表示2位的秒数
    formatter.dateFormat=@"yyyy年MM月dd日 hh:mm:ss";
    formatter.dateFormat=@"yyyy-MM-dd hh:mm:ss";
    
    
    //计算明天的此刻
    //距离现在时间 24 小时以后，明天的此刻
    NSTimeInterval t = 60*60*24;
    NSDate *tom = [NSDate dateWithTimeIntervalSinceNow:t];
    
    //格式化显示日期
    NSString *timeStr = [formatter stringFromDate:tom];
    NSLog(@"timeStr = %@",timeStr);
    
    //计算昨天的时间
    //        NSDate *yes = [NSDate dateWithTimeIntervalSinceNow:-t];
    //        NSString *YesStr = [formatter stringFromDate:yes];
    //        NSLog(@"YesStr = %@",YesStr);
    NSDate *now = [NSDate date];
    NSDate *zt = [now addTimeInterval:-t];
    timeStr = [formatter stringFromDate:zt];
    NSLog(@"zt = %@",timeStr);

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //日期对象
        //2015-10-26 22:55:25
        //year month day
        //NSCalendar 日期类，可以帮我们快速的获取年月日，时分秒
        NSDate *d = [NSDate date];
        
        //创建日期的对象
        NSCalendar *calendar = [NSCalendar currentCalendar];
        
        //[calendar components:获取日期的那些部分  fromDate:日期对象]
        NSDateComponents *coms = [calendar components:NSCalendarUnitYear| NSCalendarUnitMonth| NSCalendarUnitDay fromDate:d];
        NSLog(@"year:%d, month:%d, day:%d",coms.year,coms.month,coms.day);
        
        
        //比较时间差
        NSString *time1 = @"2014-10-15 22:00:00";
        NSString *time2 = @"2015-10-16 22:00:00";
        
        NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
        fmt.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        
        NSDate *date1 = [fmt dateFromString:time1];
        NSDate *date2 = [fmt dateFromString:time2];
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        int unit = NSCalendarUnitYear | NSCalendarUnitMonth |NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        coms = [cal components:unit fromDate:date1 toDate:date2 options:0];
        NSLog(@"相差：%ld年%ld月%ld天%ld小时%ld分钟%ld秒",coms.year,coms.month,coms.day,coms.hour,coms.minute,coms.second);

    }
    return 0;
}
