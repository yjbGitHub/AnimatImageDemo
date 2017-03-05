//  AppDelegate.m
//  AnimatImageDemo
//
//  Created by yujianbin on 2017/3/5.
//  Copyright © 2017年 yujianbin. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kJSAnimatedImagesViewDefaultTimePerImage 20.0f

@protocol AnimatedImagesViewDelegate;

@interface AnimatedImagesView : UIView

@property(nonatomic, assign) id<AnimatedImagesViewDelegate> delegate;

@property(nonatomic, assign) NSTimeInterval timePerImage;

- (void)startAnimating;
- (void)stopAnimating;

- (void)reloadData;

@end

@protocol AnimatedImagesViewDelegate
- (NSUInteger)animatedImagesNumberOfImages:
    (AnimatedImagesView *)animatedImagesView;
- (UIImage *)animatedImagesView:(AnimatedImagesView *)animatedImagesView
                   imageAtIndex:(NSUInteger)index;
@end
