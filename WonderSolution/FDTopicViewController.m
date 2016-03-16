//
//  FDTopicViewController.m
//  WonderSolution
//
//  Created by gong on 16/3/15.
//  Copyright © 2016年 gong. All rights reserved.
//

#import "FDTopicViewController.h"

@interface FDTopicViewController ()

@end

@implementation FDTopicViewController

+ (FDTopicViewController *)createViewControllerTitle:(NSString *)_title withType:(FDTopicType)_type
{
    FDTopicViewController *topicViewController = [[FDTopicViewController alloc] init];
    
    topicViewController.title = _title;
    topicViewController.type = _type;
    
    return topicViewController;
}




- (void)initParamTitle:(NSString *)_title withType:(FDTopicType *)_type
{
    
}




















- (void)viewDidLoad {
    [super viewDidLoad];
   




}



@end
