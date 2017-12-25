//
//  UILabel+AutoHeight.m
//  WuTong
//
//  Created by wztx on 2017/12/22.
//  Copyright © 2017年 lilongjun. All rights reserved.
//

#import "UILabel+AutoHeight.h"

@implementation UILabel (AutoHeight)

@dynamic height;

/**
 label 自适应高度

 @param font 字体大小
 @param color 字体颜色
 */
- (void)autoLayoutHeightWithFont:(UIFont *)font textColor:(UIColor *)color
{
    NSString *contentText = self.text;
    if (contentText.length) {
        self.numberOfLines = 0;
        UIFont *textFont = font;
        UIColor *textColor = color;
        if (!textFont) {
            textFont = [UIFont systemFontOfSize:self.font.pointSize];
        }
        if (!textColor) {
            textColor = [UIColor colorWithCGColor:self.textColor.CGColor];
        }
        CGRect frame = [contentText boundingRectWithSize:CGSizeMake(self.bounds.size.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:textFont,NSForegroundColorAttributeName:textColor} context:NULL];
        CGFloat height = MAX(self.bounds.size.height, frame.size.height+2);
        self.height = height;
    }
}

- (void)setHeight:(CGFloat)height
{
    CGRect labelFrame = self.frame;
    labelFrame.size.height = height;
    self.frame = labelFrame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

@end



