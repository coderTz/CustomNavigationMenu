//
//  ViewController.m
//  CustomNavigationMenu
//
//  Created by tanzhen on 16/8/1.
//  Copyright © 2016年 CoderTz. All rights reserved.
//

#import "ViewController.h"
#import "UIBarButtonItem+TZ.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    
  // 第一种  只能设置导航条  第二种覆盖掉状态栏 设置为同一张背景图
//    [self.navigationController.navigationBar  setBackgroundImage:[UIImage imageNamed:@"navigationbar_background"] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance]setBackgroundImage:[UIImage imageNamed:@"navigationbar_background"]
                                      forBarMetrics:UIBarMetricsDefault];
    
    [self SetNanviPressBtn];
//    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"first" style:UITabBarSystemItemContacts target:self action:@selector(one:)];
//    
//    UIBarButtonItem *anotherButton2 = [[UIBarButtonItem alloc] initWithTitle:@"second" style:UITabBarSystemItemContacts target:self action:@selector(two:)];
//    
//    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects: anotherButton,anotherButton2,nil]];
//   
    [self CreatTitleView];
      
}
// 自定义 左 右 按钮
- (void)SetNanviPressBtn
{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem ItemWithNormalImage:@"LeftBtn_normal" HighImage:@"rightBtn_high" Target:self action:@selector(ClickLeft)];
    //  右边一个按钮  两个按钮
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem ItemWithNormalImage:@"tabbar_fightemoji_normal" HighImage:@"tabbar_fightemoji_heighlight" Target:self action:@selector(ClickRight)];
    // ********* 这边为了 右边两个按钮 中间留出点距离  我又加了一个按钮 让他的标题为空 这样就取巧的流出了距离；
     UIBarButtonItem *nilBtn = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:self action:nil];
    
    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:[UIBarButtonItem ItemWithNormalImage:@"tabbar_fightemoji_normal" HighImage:@"tabbar_fightemoji_heighlight" Target:self action:@selector(ClickRight)],nilBtn,[UIBarButtonItem ItemWithNormalImage:@"tabbar_fightemoji_normal" HighImage:@"tabbar_fightemoji_heighlight" Target:self action:@selector(ClickRight1)], nil]];
    
    
}
// 自定义导航栏中间视图
- (void)CreatTitleView
{
    UIImageView * centerView = [[UIImageView alloc] init];
    centerView.frame = CGRectMake(0, 7, 30, 30);
//    centerView.backgroundColor = [UIColor orangeColor];
    [centerView setImage:[UIImage imageNamed:@"tabbar_fightemoji_heighlight"]];
    self.navigationItem.titleView =centerView;

}


- (void)ClickLeft
{
    NSLog(@"我是左边按钮");
}

- (void)ClickRight
{
    NSLog(@"我是右边第一个");
}
- (void)ClickRight1
{
    NSLog(@"我是右边第二个");
}

























- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
