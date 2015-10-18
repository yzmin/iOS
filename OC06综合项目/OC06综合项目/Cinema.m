//
//  Cinema.m
//  OC06综合项目
//
//  Created by yezhimin on 15/10/18.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "Cinema.h"

@implementation Cinema
{
    //保存用户选择的编号
    int selectNo;
}
//创建电影院的时候，默认给一些票
-(instancetype)initWithCinemaName:(NSString *)cinemaName
{
    if(self = [super init])
    {
        //初始化电影院的名称
        _cinemaName = cinemaName;
        //给数进行初始化
        //MovieTicket *tickets[5];//票的集合
        for(int i = 0; i < LEN; ++i)
        {
            MovieTicket *movieTicket = [MovieTicket new];
            movieTicket.name = [NSString stringWithFormat:@"变形金刚1%d",i+1];
            movieTicket.actor = @"老王，老王媳妇，小白";
            movieTicket.director  = @"威哥";
            movieTicket.longTime = 120;
            movieTicket.showTime = [NSString stringWithFormat:@"201%d-01-01",i+1];
            movieTicket.no = i+1;
            movieTicket.startTime = [NSString stringWithFormat:@"1%d:30",i+1];
            movieTicket.ticketPrice = 9.9f;
            movieTicket.place = [NSString stringWithFormat:@"影厅%02d",i+1];
            
            //把电影票保存到数组中
            tickets[i] = movieTicket;
        }
    }
    return self;
}
//开始购票
-(void)startBuyTicket
{
    NSLog(@"欢迎来到%@",_cinemaName);
    [self list];//先要显示热映信息
}

//显示热映的信息
/*
    tickets[5];
    1）循环控制
    2）显示所有票的信息
 */
-(void)list
{
    NSLog(@"显示热映的列表");
    /*
     1
     xxxxx   开始时间   时长
     主演     导演      上映时间
     */
    for(int i = 0;i < LEN;++i)
    {
        MovieTicket *ticket = tickets[i];
        NSLog(@"\n编号:%d\n名称:%@\t\t开始时间:%@\t\t时长:%d分\n主演:%@\t\t导演:%@\t\t上映时间:%@\n\n",ticket.no,ticket.name,ticket.startTime,ticket.longTime,ticket.actor,ticket.director,ticket.showTime);
        
    }
    [self selectMovie];
}

//选择一部电影
/*
 1）提示用户输入一部电影的编号
 2）接收电影的编号
 3）判断编号是否存在
 4）保存用户的选择（保存电影的编号）
 */
-(void)selectMovie
{
    int num;
    do{
        // 1）提示用户输入一部电影的编号
        printf("请选择你要观看的电影(输入编号:)\n");
         // 2）接收电影的编号
        scanf("%d",&num);
        // 3）判断编号是否存在
        if(num < 1 || num > LEN)
        {
            NSLog(@"你输入的编号不合法");
        }
        else
        {
            break;
        }
    }while (1);
   
    // 4）保存用户的选择（保存电影的编号）
    //输入的编号和数组下标相差1
    selectNo = num - 1;
    NSLog(@"你已经选择了:%@",tickets[selectNo].name);
    [self selectRow];
}

//选择排数
//1）打印影厅，以及该影厅的排数和座位数
//2）提示输入要选择排数
//3）判断排数是否合法
//4）保存你选择的排数
-(void)selectRow
{
    NSLog(@"\n当前影厅:%@,当前有%d排%d座",tickets[selectNo].place);
    //1）打印影厅，以及该影厅的排数和座位数
    for(int i = 0;i < ROW+1;++i)
    {
        for(int j = 0; j < COL+1;++j)
        {
            //判断，如果是第一行，打印j的信息
            if(i == 0)
            {
                printf("%02d ",j);
            }
            //如果第一列，打印的时i的信息
            else if(j == 0)
            {
                printf("%02d ",i);
            }
            else
            {
                 printf(" + ");
            }
           
        }
        printf("\n");
    }
    //2）提示输入要选择排数
    int num;
    do{
        printf("请输入要选择的排数:\n");
        scanf("%d",&num);
        //3）判断排数是否合法
        if(num < 1 || num > ROW)
        {
            printf("你输入有误，请重新输入!\n");
        }
        else
        {
            break;
        }
    }while(1);
    
    //4）保存你选择的排数
    tickets[selectNo].rowNum = num;
    NSLog(@"\n你已经选择了第%d排",num);
    [self selectCol];
}

//选择列数
//1)提示用户输入座位数
//2）接收用户输入的座位数
//3）判断是否合法
//4）保存
//5)让用户再次确认信息
-(void)selectCol
{
    
    int num;
    do
    {
        //1)提示用户输入座位数
        NSLog(@"请输入座位数:\n");
        //2）接收用户输入的座位数
        scanf("%d",&num);
        //3）判断是否合法
        if(num < 1 || num > COL)
        {
            printf("您输入的有误，请重新输入!");
        }
        else
        {
            break;
        }
    }while(1);
    //4）保存
    tickets[selectNo].colNum = num;
    MovieTicket *ticket = tickets[selectNo];
    
    //先打印用户购买的票的信息，然后再让用户确认
    NSLog(@"\n您的购票信息如下：\n名称:%@\t\t开始时间:%@\n影厅:%@\t\t价格:%.2f\n位置:%d排%d座\n请再次确认：1、确认购买 0、取消",ticket.name,ticket.startTime,
        ticket.place,ticket.ticketPrice,
        ticket.rowNum,ticket.colNum);
    int isYes;
    scanf("%d",&isYes);
    if(isYes)
    {
        [self pay];
    }
}

//确认购票，并且付款
-(void)pay
{
    NSLog(@"正在支付....\n支付完成");
    [self Print_ticket];
}

//购票成功，打印票
-(void)Print_ticket
{
    MovieTicket *ticket = tickets[selectNo];
    NSLog(@"\n恭喜您，购票完成，购票信息如下：\n名称:%@\t\t开始时间:%@\n影厅:%@\t\t价格:%.2f\n位置:%d排%d座",
          ticket.name,ticket.startTime,
          ticket.place,ticket.ticketPrice,
          ticket.rowNum,ticket.colNum);
    
    //打印位置的信息
    for(int i = 0;i < ROW+1;++i)
    {
        for(int j = 0; j < COL+1;++j)
        {
            //判断，如果是第一行，打印j的信息
            if(i == 0)
            {
                printf("%02d ",j);
            }
            //如果第一列，打印的时i的信息
            else if(j == 0)
            {
                printf("%02d ",i);
            }
            else if(ticket.rowNum == i && ticket.colNum == j)
            {
                printf(" @ ");
            }
            else
            {
                printf(" + ");
            }
            
        }
        printf("\n");
    }

}

@end
