//
//  ViewController.m
//  AnimatImageDemo
//
//  Created by yujianbin on 2017/3/5.
//  Copyright © 2017年 yujianbin. All rights reserved.
//

#import "ViewController.h"
#import "AnimatedImagesView.h"
@interface ViewController ()<AnimatedImagesViewDelegate>
@property(retain, nonatomic) IBOutlet AnimatedImagesView *animatedImagesView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加动态图
    self.animatedImagesView = [[AnimatedImagesView alloc]
                               initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,
                                                        self.view.bounds.size.height)];
    [self.view addSubview:self.animatedImagesView];
    self.animatedImagesView.delegate = self;
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.animatedImagesView startAnimating];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.animatedImagesView stopAnimating];
}

- (void)viewDidUnload {
    [self setAnimatedImagesView:nil];
    
    [super viewDidUnload];
}

- (NSUInteger)animatedImagesNumberOfImages:
(AnimatedImagesView *)animatedImagesView {
    return 3;
}

- (UIImage *)animatedImagesView:(AnimatedImagesView *)animatedImagesView
                   imageAtIndex:(NSUInteger)index {
    NSString *imageName = @"";
    if (index == 0) {
        imageName = @"Wechat1";
    }else if(index == 1){
        imageName = @"Wechat2";
    }else{
       imageName = @"Wechat3";
    }
    return [UIImage imageNamed:imageName];
}


@end
