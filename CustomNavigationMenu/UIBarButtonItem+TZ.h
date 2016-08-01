//
//  UIBarButtonItem+TZ.h
//  CustomNavigationMenu
//
//  Created by tanzhen on 16/8/1.
//  Copyright © 2016年 CoderTz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (TZ)
/**
 *  快速创建一个显示图片的item
 *
 *  @param action   监听方法
 */

+ (UIBarButtonItem *)ItemWithNormalImage:(NSString *)NormalImage HighImage:(NSString *)HighImage Target:(id)target action:(SEL)action;

@end
