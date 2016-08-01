//
//  UIBarButtonItem+TZ.m
//  CustomNavigationMenu
//
//  Created by tanzhen on 16/8/1.
//  Copyright © 2016年 CoderTz. All rights reserved.
//

#import "UIBarButtonItem+TZ.h"

@implementation UIBarButtonItem (TZ)
+ (UIBarButtonItem *)ItemWithNormalImage:(NSString *)NormalImage HighImage:(NSString *)HighImage Target:(id)target action:(SEL)action
{
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:NormalImage] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:HighImage] forState:UIControlStateHighlighted];
    button.frame = (CGRect){CGPointZero,button.currentBackgroundImage.size};
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
    
    
}


@end
