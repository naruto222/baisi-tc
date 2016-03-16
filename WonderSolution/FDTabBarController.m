//
//  FDTabBarController.m
//  WonderSolution
//
//  Created by gong on 16/3/15.
//  Copyright © 2016年 gong. All rights reserved.
//

#import "FDTabBarController.h"

#import "FDNavigationController.h"

#import "FDEssenceViewController.h"
#import "FDNewViewController.h"
#import "FDAttentionViewController.h"
#import "FDMeViewController.h"

#import "FDTopicViewController.h"



@interface FDTabBarController ()


@end

@implementation FDTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    FDEssenceViewController *essenceViewController = [[FDEssenceViewController alloc] init];
    [self AddItemViewController:essenceViewController title:@"精华" image:[UIImage imageNamed:@"tabBar_essence_icon"] selectedImage:[UIImage imageNamed:@"tabBar_essence_click_icon"]];
    
    
    FDNewViewController *newViewController = [[FDNewViewController alloc] init];
    [self AddItemViewController:newViewController title:@"新帖" image:[UIImage imageNamed:@"tabBar_new_icon"] selectedImage:[UIImage imageNamed:@"tabBar_new_click_icon"]];
    
    
    FDAttentionViewController *attentionViewController = [[FDAttentionViewController alloc] init];
    [self AddItemViewController:attentionViewController title:@"关注" image:[UIImage imageNamed:@"tabBar_attention_icon"] selectedImage:[UIImage imageNamed:@"tabBar_attention_click_icon"]];
    
    
    FDMeViewController *meViewController = [[FDMeViewController alloc] init];
    [self AddItemViewController:meViewController title:@"我" image:[UIImage imageNamed:@"tabBar_me_icon"] selectedImage:[UIImage imageNamed:@"tabBar_me_click_icon"]];
    
   
}


- (void)AddItemViewController:(UIViewController *)viewController
                        title:(NSString *)viewTitle
                        image:(UIImage *)normalImage
                selectedImage:(UIImage *)selectedImage
{
    viewController.title = viewTitle;
    
    viewController.tabBarItem.image = normalImage;
    viewController.tabBarItem.selectedImage = selectedImage;
    viewController.edgesForExtendedLayout = UIRectEdgeNone;
    
    FDNavigationController *navigationController = [[FDNavigationController alloc] initWithRootViewController:viewController];
    
    [self addChildViewController:navigationController];
}



@end
