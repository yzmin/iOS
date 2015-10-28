//
//  ViewController.m
//  03控件的常见熟悉
//
//  Created by yezhimin on 15/10/28.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)show:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txt1;

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

- (IBAction)show:(id)sender {
    //获取当前控制器所管理的view下的所有子控件

//    for(UIView *view in self.view.subviews)
//    {
//        //subview表示获取某个控制器的所有子控件
//        view.backgroundColor = [UIColor redColor];
//    }
//    self.txt1.superview.backgroundColor = [UIColor yellowColor];
    
    //根据tag来获取某个控件
//    UITextField *txt = (UITextField *)[self.view viewWithTag:1000];
//    txt.text = @"夜之梦";
    
    //删除所有的子控件
    while (self.view.subviews.firstObject) {
        [self.view.subviews.firstObject removeFromSuperview];
    }
    
}
@end
