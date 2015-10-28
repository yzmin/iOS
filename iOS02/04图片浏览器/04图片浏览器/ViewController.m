//
//  ViewController.m
//  04图片浏览器
//
//  Created by yezhimin on 15/10/28.
//  Copyright (c) 2015年 yezhimin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSArray *pic;

//自己写一个索引，来控制当前显示的是第几张图片
//这个属性 默认是 0
@property (nonatomic,assign) int index;
//索引
@property (weak, nonatomic) IBOutlet UILabel *lblIndex;
//图片
@property (weak, nonatomic) IBOutlet UIImageView *imgViewIcon;
//图标
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
//下一张的按钮
@property (weak, nonatomic) IBOutlet UIButton *btnNext;
//上一张的按钮
@property (weak, nonatomic) IBOutlet UIButton *btnpre;


- (IBAction)next;
- (IBAction)pre;

@end

@implementation ViewController

//重写pic属性的get方法
//懒加载数据，用的时候加载
-(NSArray *)pic
{
    if(_pic == nil)
    {
        //写代码加载pic.plist文件中的数据到_pic
        //1）获取pic.plist的文件路径
        //获取pic.plist文件的路径赋值给path变量
        //[NSBundle mainBundle] 表示获取这个app安装到手机上时的根目录
        //然后在app的安装的根目录下搜索pic.plist文件的路径
        NSString *path = [[NSBundle mainBundle] pathForResource:@"pic.plist" ofType:nil];
        //读取文件
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
//        NSLog(@"count: %d",array.count);
//        NSLog(@"%@",array);
        _pic = array;
        // /Users/yezhimin/Desktop/ios_code/iOS02/04图片浏览器/04图片浏览器/pic.plist
    }
    return _pic;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.pic;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)next {
    //1) 让索引 ＋＋
    self.index++;
    
    //2) 从数组中获取当前的图片数据
    NSDictionary *dict = self.pic[self.index];
    
    //3）把获取的数据，设置到界面上
    self.lblIndex.text = [NSString stringWithFormat:@"%d/%ld",self.index + 1,self.pic.count];
    //通过image属性来设置图片框的图片
    self.imgViewIcon.image = [UIImage imageNamed:dict[@"icon"]];
    
    //设置图片的标题
    self.lblTitle.text = dict[@"title"];
    
    //设置“下一张”按钮是否可点击
    self.btnNext.enabled = (self.index != (self.pic.count -1));
    self.btnpre.enabled = (self.index != 0);
//    if(self.index ==(self.pic.count -1))
//    {
//        self.btnNext.enabled = NO;
//    }
//    else
//    {
//        self.btnNext.enabled = YES;
//    }
}

//上一张图片
- (IBAction)pre {
    //1) 让索引 --
    self.index--;
    
    //2) 从数组中获取当前的图片数据
    NSDictionary *dict = self.pic[self.index];
    
    //3）把获取的数据，设置到界面上
    self.lblIndex.text = [NSString stringWithFormat:@"%d/%ld",self.index + 1,self.pic.count];
    //通过image属性来设置图片框的图片
    self.imgViewIcon.image = [UIImage imageNamed:dict[@"icon"]];
    
    //设置图片的标题
//    self.lblTitle.text = dict[@"title"];
//    
//    if(self.index == 0)
//    {
//        self.btnpre.enabled = NO;
//    }
//    else
//    {
//        self.btnpre.enabled = YES;
//    }
    self.btnpre.enabled = (self.index != 0);
    self.btnNext.enabled = (self.index != (self.pic.count -1));
}
@end
