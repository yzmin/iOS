//
//  ViewController.m
//  02按钮的使用介绍
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnIcon;
- (IBAction)move:(UIButton *)sender;
- (IBAction)scale:(UIButton *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//左右上下
- (IBAction)move:(UIButton *)sender {
    //通过frame移动位置
    {
//        //为每个按钮设置不同的tag值，然后在这个方法中就可以根据sender,tag来判断用户当前点击的是哪个按钮
//        //1) 获取原始的frame
//        CGRect originFrame = self.btnIcon.frame;
//        //2) 修改frame
//        switch (sender.tag) {
//            case 10://上
//                originFrame.origin.y -= 10;
//                break;
//            case 20://左
//                originFrame.origin.x -=10;
//                break;
//            case 30://右
//                originFrame.origin.x += 10;
//                break;
//            case 40://下
//                originFrame.origin.y +=10;
//                break;
//        }
//        
//        //3） 重新赋值
//        self.btnIcon.frame = originFrame;
//        NSLog(@"xxxxxxxx");
    }
    //通过center移动位置
    // center 表示的是控件中心点的坐标
    // frame获取的x和y表示的是元素左上角的坐标
    CGPoint centerPoint = self.btnIcon.center;
    //修改center
            switch (sender.tag) {
                case 10://上
                    centerPoint.y -= 10;
                    break;
                case 20://左
                    centerPoint.x -=10;
                    break;
                case 30://右
                    centerPoint.x += 10;
                    break;
                case 40://下
                    centerPoint.y +=10;
                    break;
            }
    //重新赋值
    //没有动画，直接执行
    //self.btnIcon.center = centerPoint;
    //通过动画的方式来执行
    
    //1) 开启一个动画
//    [UIView beginAnimations:nil context:nil];
//    
//    //2) 设置动画执行时间
//    [UIView setAnimationDuration:1.5];
//    //==========中间这里是要执行的动画的代码================
//    self.btnIcon.center = centerPoint;
//    //==========中间这里是要执行的动画的代码================
//    
//    //3）提交动画
//    [UIView commitAnimations];
    
    [UIView animateWithDuration:2.0 animations:^{
        self.btnIcon.center = centerPoint;
    }];
}

//缩放
- (IBAction)scale:(UIButton *)sender {
    //通过frame修改大小
    {
            //1） 获取原始frame
            CGRect originFrame = self.btnIcon.frame;
            //2） 修改frame
            switch (sender.tag) {
                case 50:
                    originFrame.size.width += 10;
                    originFrame.size.height += 10;
                    break;
                case 60:
                    originFrame.size.width -= 10;
                    originFrame.size.height -= 10;
                    break;
            }
            //3） 重新赋值
        //1) 头尾式动画
//        [UIView beginAnimations:nil context:nil];
//        
//        [UIView setAnimationDuration:2];
//        
//        self.btnIcon.frame = originFrame;
//
//        [UIView commitAnimations];
        //2）通过block方式执行动画
        [UIView animateWithDuration:2.0 animations:^{
            self.btnIcon.frame = originFrame;
        }];
        
    }
//    //通过bounds修改大小
//    //bounds是CGRect类型，但是x,y的值是0，所以只能通过bounds修改大小
//    //1) 获取原始的bounds值
//    CGRect originBounds = self.btnIcon.bounds;
//    
//    //2）修改bounds
//        switch (sender.tag) {
//            case 50:
//                originBounds.size.width += 10;
//                originBounds.size.height += 10;
//                break;
//            case 60:
//                originBounds.size.width -= 10;
//                originBounds.size.height -= 10;
//                break;
//        }
//    //3）重新赋值
//    //self.btnIcon.bounds = originBounds;
//    
//    //动画实现
//    [UIView beginAnimations:nil context:nil];
//    //设置动画执行时间
//    [UIView setAnimationDuration:1];
//    //执行的动画
//    self.btnIcon.bounds = originBounds;
//    //提交代码
//    [UIView commitAnimations];
}
@end
