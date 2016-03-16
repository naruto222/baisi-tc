//
//  FDEssenceViewController.m
//  WonderSolution
//
//  Created by gong on 16/3/15.
//  Copyright © 2016年 gong. All rights reserved.
//

#import "FDEssenceViewController.h"
#import "FDTopicViewController.h"

@interface FDEssenceViewController () <UIScrollViewDelegate>

@property (nonatomic, weak) UIButton *selectedButton;
@property (nonatomic, weak) UIView *bottomLine;
@property (nonatomic, weak) UIView *tagsView;
@property (nonatomic, weak) UIScrollView *contentView;

@end

@implementation FDEssenceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];

    
    [self addChildSwitchViewController];
    
    [self setupTagsView];
    
    [self addContentView];

}


- (void)tagClick
{
    
}




- (void)addChildSwitchViewController
{
    
    FDTopicViewController *allVC = [[FDTopicViewController alloc] init];
    allVC.title = @"全部";
    allVC.type = FDTopicTypeAll;
    allVC.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:allVC];
    
    
    FDTopicViewController *audioVC = [[FDTopicViewController alloc] init];
    audioVC.title = @"音频";
    audioVC.type = FDTopicTypeAudio;
    audioVC.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:audioVC];
    
    
    
    FDTopicViewController *videoVC = [[FDTopicViewController alloc] init];
    videoVC.title = @"视频";
    videoVC.type = FDTopicTypeVideo;
    videoVC.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:videoVC];
    
    

    FDTopicViewController *pictureVC = [[FDTopicViewController alloc] init];
    pictureVC.title = @"图片";
    pictureVC.type = FDTopicTypePicture;
    [self addChildViewController:pictureVC];
    
    
    FDTopicViewController *wordVC = [[FDTopicViewController alloc] init];
    wordVC.title = @"段子";
    wordVC.type = FDTopicTypeWord;
    [self addChildViewController:wordVC];
}


- (void)setupTagsView
{
    UIView *tagdView = [[UIView alloc] init];
    tagdView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.7];
    
    tagdView.y = 0;
    tagdView.height = 35;
    tagdView.width = self.view.width;
    
    [self.view addSubview:tagdView];
    self.tagsView = tagdView;
    
    
    // 下划线
    UIView *bottomLine = [[UIView alloc] init];
    bottomLine.backgroundColor = [UIColor redColor];
    bottomLine.height = 2;
    bottomLine.y = tagdView.height - bottomLine.height;
    
    // 添加按钮
    for (NSInteger i = 0; i < self.childViewControllers.count; i++)
    {
        UIButton *button = [[UIButton alloc] init];
        button.tag = i;
        
        UIViewController *childVC = self.childViewControllers[i];
        [button setTitle:childVC.title forState:UIControlStateNormal];
        [button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateDisabled];
        
        button.titleLabel.font = [UIFont systemFontOfSize:15];
        button.width = self.view.width / self.childViewControllers.count;
        button.height = tagdView.height;
        button.x = i * button.width;
        
        // 计算titleLabel的尺寸
        [button.titleLabel sizeToFit];
        [button addTarget:self action:@selector(titleClick:) forControlEvents:UIControlEventTouchUpInside];
        [tagdView addSubview:button];
        
        
        
        if (tagdView.subviews.count == 1)
        {
            [self titleClick:button];
            
            bottomLine.width = button.titleLabel.width;
            bottomLine.centerX = button.centerX;
        }
    }
    [tagdView addSubview:bottomLine];
     self.bottomLine = bottomLine;
}


- (void)titleClick:(UIButton *)button
{
    
}





- (void)addContentView
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    UIScrollView *contentView = [[UIScrollView alloc] init];
    contentView.frame = self.view.bounds;
    contentView.delegate = self;
    
    
    contentView.contentSize = CGSizeMake(self.childViewControllers.count * self.view.width, 1);
    contentView.pagingEnabled = YES;
    
    [self.view insertSubview:contentView atIndex:0];
    self.contentView = contentView;
    
    [self scrollViewDidEndScrollingAnimation:contentView];
}



- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    // 未完待续...
}











@end
