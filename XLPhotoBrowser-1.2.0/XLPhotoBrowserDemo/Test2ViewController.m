//
//  Test2ViewController.m
//  XLPhotoBrowserDemo
//
//  Created by Liushannoon on 16/7/17.
//  Copyright © 2016年 LiuShannoon. All rights reserved.
//

#import "Test2ViewController.h"

@implementation Test2ViewController

/**
 *  浏览图片
 *
 */
- (void)clickImage:(UITapGestureRecognizer *)tap
{
    [XLPhotoBrowser showPhotoBrowserWithCurrentImageIndex:tap.view.tag imageCount:self.images.count datasource:self];
}

#pragma mark    -   XLPhotoBrowserDatasource
- (UIImage *)photoBrowser:(XLPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
{
    return self.images[index];
}

- (UIView *)photoBrowser:(XLPhotoBrowser *)browser sourceImageViewForIndex:(NSInteger)index
{
    return self.scrollView.subviews[index];
}


@end
