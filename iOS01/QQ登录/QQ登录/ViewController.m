//
//  ViewController.m
//  QQ登录
//
//  Created by yezhimin on 15/10/27.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *QQ;
@property (weak, nonatomic) IBOutlet UITextField *QQPasswd;
- (IBAction)login;
- (IBAction)cancel;

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

- (IBAction)login {
    NSString *qq = self.QQ.text;
    NSString *passwd = self.QQPasswd.text;
    NSLog(@"QQ:%@ , Passwd:%@",qq,passwd);
    [self.view endEditing:YES];
    
}

- (IBAction)cancel {
    NSLog(@"取消");
    self.QQ.text = @"";
    self.QQPasswd.text = @"";
    [self.view endEditing:YES];
}
@end
