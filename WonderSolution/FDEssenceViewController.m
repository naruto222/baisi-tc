//
//  FDEssenceViewController.m
//  WonderSolution
//
//  Created by gong on 16/3/15.
//  Copyright © 2016年 gong. All rights reserved.
//

#import "FDEssenceViewController.h"


@interface FDEssenceViewController ()

@end

@implementation FDEssenceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *nameLabel = [[UILabel alloc] init];
    [self.view addSubview:nameLabel];
    nameLabel.frame = CGRectMake(0, 0, 180, 80);
    nameLabel.backgroundColor = [UIColor blackColor];
    nameLabel.x = 20;
    nameLabel.y = 100;




}


@end
