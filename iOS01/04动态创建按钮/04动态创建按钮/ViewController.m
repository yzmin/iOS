//
//  ViewController.m
//  04动态创建按钮
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//当要显示一个界面的时候，首先创建这个界面对应的控制器
//控制器创建好以后，接着创建控制器所管理的那个view,当这个view加载完毕以后就开始执行下面的方法。
//所以只要viewDidLoad方法被执行了，就表示控制器所管理的view 创建好了
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //动态创建我们自己的按钮
    //1) 创建按钮（UIButton）
    //UIButton *button = [[UIButton alloc] init];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //2) 设置按钮上显示的文字
    //设置默认状态下的显示文字
    [button setTitle:@"点我吧" forState:UIControlStateNormal];
    //设置高亮状态下的显示文字
    [button setTitle:@"摸我干嘛" forState:UIControlStateHighlighted];
    
    //设置不同状态下的文字颜色
    //默认状态下红色
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //默认高亮状态下蓝色
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    //3) 设置按钮的背景图片
    //加载图片
    UIImage *imageNormal = [UIImage imageNamed:@"btn_01"];
    UIImage *imgHighlighted = [UIImage imageNamed:@"btn_02"];
    //设置默认状态下的背景图片
    [button setBackgroundImage:imageNormal forState:UIControlStateNormal];
    //设置高亮状态下的背景图片
    [button setBackgroundImage:imgHighlighted forState:UIControlStateHighlighted];
    
    //设置按钮的frame
    button.frame = CGRectMake(50,100,100,100);
    
    //通过代码为按钮注册一个单击事件
    //这是如何为动态创建的按钮注册单击事件
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    //把动态创建的按钮加到控制器所管理的那个view中
    [self.view addSubview:button];
    
}

-(void)buttonClick
{
    NSLog(@"按钮被点击了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
