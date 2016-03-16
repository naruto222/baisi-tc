//
//  FDTopicViewController.h
//  WonderSolution
//
//  Created by gong on 16/3/15.
//  Copyright © 2016年 gong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FDTopicViewController : UIViewController

@property (nonatomic, assign) FDTopicType type;

+ (FDTopicViewController *)createViewControllerTitle:(NSString *)_title withType:(FDTopicType)_type;

@end
