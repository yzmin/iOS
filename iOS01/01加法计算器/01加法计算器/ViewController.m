//
//  ViewController.m
//  01加法计算器
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

//类的扩展
@interface ViewController ()
//方法声明
- (IBAction)login;
- (IBAction)compute;
//表示第一个文本框
@property (weak, nonatomic) IBOutlet UITextField *txtNum1;
//第二个文本框
@property (weak, nonatomic) IBOutlet UITextField *txtNum2;
//显示结果的Label
@property (weak, nonatomic) IBOutlet UILabel *lbResult;

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
//方法实现
- (IBAction)login {
}

- (IBAction)compute {
    //实现计算方法
    NSLog(@"xxxxxxxxxxxxxx");
    //1) 获取用户的输入
    NSString *num1 = self.txtNum1.text;
     NSString *num2 = self.txtNum2.text;
    int n1 = [num1 intValue];
    int n2 = [num2 intValue];
//    int n2 = self.txtNum1.text.intValue;
    
    //2）计算和
    int result = n1 + n2;
    //3）结果显示到Label上
    self.lbResult.text = [NSString stringWithFormat:@"%d",result];
    
    //3)把键盘叫回去
    //谁叫出的键盘，那么谁就是第一响应者，让第一响应者辞职，把键盘叫回去
    //第一种方法：
    //[self.txtNum1 resignFirstResponder];
    //[self.txtNum2 resignFirstResponder];
    
    //把键盘叫回去的第二种方法
    //self.view 表示是当前控制器所管理的那个view (每一个控制器都管理一个view)
    //这时把键盘叫回去的思路就是：
    //让控制器所管理的view停止编辑，这样的话，凡是这个view中的子控件叫出的键盘都回去了
    [self.view endEditing:YES];
}
@end
