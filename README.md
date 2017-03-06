# AnimatImageDemo

####用法：
#####1,创建控件：
```
- (void)viewDidLoad {
    [super viewDidLoad];
    //添加动态图
    self.animatedImagesView = [[AnimatedImagesView alloc]
                               initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,
                                                        self.view.bounds.size.height)];
    [self.view addSubview:self.animatedImagesView];
    self.animatedImagesView.delegate = self;
}

```

#####2，启动 / 关闭 动画：
```
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
```

#####3, 实现< AnimatedImagesViewDelegate >代理方法：
```
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

```

