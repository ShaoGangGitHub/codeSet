//
//  UILabel+AutoHeight.h
//  WuTong
//
//  Created by wztx on 2017/12/22.
//  Copyright © 2017年 lilongjun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (AutoHeight)

/** */
@property(nonatomic,assign) CGFloat height;


/**
 label 自适应高度


 @param font 字体大小
 @param color 字体颜色
 */
- (void)autoLayoutHeightWithFont:(UIFont *)font textColor:(UIColor *)color;


@end

