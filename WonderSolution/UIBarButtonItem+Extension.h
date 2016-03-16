//
//  UIBarButtonItem+Extension.h
//  WonderSolution
//
//  Created by gong on 16/3/16.
//  Copyright © 2016年 gong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (instancetype)barButtonItemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end
