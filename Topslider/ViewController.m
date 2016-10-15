//
//  ViewController.m
//  Topslider
//
//  Created by 林昊然 on 2016/10/15.
//  Copyright © 2016年 林昊然. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView  *scrollView;
@property (nonatomic, strong) UIView        *alphaView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //添加两个控件到屏幕上
    [self.view addSubview:[self theSubView]];
    [self.view addSubview:[self theFrontView]];
    
    //初始化scrollView
    self.scrollView               = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    //scrollView代理
    self.scrollView.delegate      = self;
    //scrollView能否翻页
    self.scrollView.pagingEnabled = YES;
    //scrolView可视范围
    self.scrollView.contentSize   = CGSizeMake(self.view.bounds.size.width * 2,
                                               self.view.bounds.size.height);
    //添加到屏幕
    [self.view addSubview:self.scrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGRect rect          = self.alphaView.frame;
    rect.origin.x        = scrollView.contentOffset.x / 2.f;
    self.alphaView.frame = rect;
}

- (UIView *)theSubView {
    // 添加前景色
    UIView *backView         = [[UIView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 70)];
    backView.backgroundColor = [UIColor colorWithRed:0.922 green:0.922 blue:0.922 alpha:1];
    [self.view addSubview:backView];
    
    // 标题1
    UILabel *title1      = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 160, 70)];
    title1.text          = @"偶然";
    title1.textAlignment = NSTextAlignmentCenter;
    title1.font          = [UIFont systemFontOfSize:20.f];
    title1.textColor     = [UIColor colorWithRed:0.443 green:0.439 blue:0.439 alpha:1];
    [backView addSubview:title1];
    
    // 标题2
    UILabel *title2      = [[UILabel alloc] initWithFrame:CGRectMake(210, 0, 160, 70)];
    title2.text          = @"无心";
    title2.textAlignment = NSTextAlignmentCenter;
    title2.font          = [UIFont systemFontOfSize:20.f];
    title2.textColor     = [UIColor colorWithRed:0.443 green:0.439 blue:0.439 alpha:1];
    [backView addSubview:title2];
    
    return backView;
}

- (UIView *)theFrontView {
    // 添加前景色
    UIView *backView         = [[UIView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 70)];
    backView.backgroundColor = [UIColor colorWithRed:0.808 green:0.208 blue:0.212 alpha:1];
    [self.view addSubview:backView];
    
    // 标题1
    UILabel *title1      = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 160, 70)];
    title1.text          = @"偶然";
    title1.textAlignment = NSTextAlignmentCenter;
    title1.font          = [UIFont systemFontOfSize:20.f];
    title1.textColor     = [UIColor colorWithRed:0.945 green:0.827 blue:0.827 alpha:1];
    [backView addSubview:title1];
    
    // 标题2
    UILabel *title2      = [[UILabel alloc] initWithFrame:CGRectMake(210, 0, 160, 70)];
    title2.text          = @"无心";
    title2.textAlignment = NSTextAlignmentCenter;
    title2.font          = [UIFont systemFontOfSize:20.f];
    title2.textColor     = [UIColor colorWithRed:0.945 green:0.827 blue:0.827 alpha:1];
    [backView addSubview:title2];
    
    self.alphaView                 = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 190, 50)];
    self.alphaView.backgroundColor = [UIColor blackColor];
    self.alphaView.layer.cornerRadius = 15.f;
    backView.maskView = self.alphaView;
    
    return backView;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
