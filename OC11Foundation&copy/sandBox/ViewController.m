//
//  ViewController.m
//  sandBox
//
//  Created by yezhimin on 15/10/26.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *sandBoxPath = NSHomeDirectory();
    NSLog(@"sandBoxPath = %@",sandBoxPath);
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSLog(@"paths = %@",paths);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
