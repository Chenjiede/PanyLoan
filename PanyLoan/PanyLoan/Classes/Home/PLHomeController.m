//
//  PLHomeController.m
//  PanyLoan
//
//  Created by JADE on 2019/4/22.
//  Copyright © 2019 JADE. All rights reserved.
//

#import "PLHomeController.h"

#import <Masonry.h>
#import "PLHomeContentView.h"

@interface PLHomeController ()

@end

@implementation PLHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.hidden = YES;
    
    [self initUI];
}

- (void)initUI {
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    
    UIImageView *backImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"WechatIMG53"]];
    
    [self.view addSubview:backImageView];
    [backImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(width, width / 1.3));
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0);
    }];
    
    UIButton *shareButton = [[UIButton alloc] initWithFrame:CGRectMake(width - 48, 40, 24, 33.5)];
    [shareButton setImage:[UIImage imageNamed:@"1画板 18jpg"] forState:UIControlStateNormal];
    [shareButton addTarget:self action:@selector(onKefu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shareButton];
    
    PLHomeContentView *contentView = [[UINib nibWithNibName:@"PLHomeContentView" bundle:nil] instantiateWithOwner:nil  options:nil].firstObject;
    [self.view addSubview:contentView];
    
    contentView.layer.borderWidth = 0.5;
    contentView.layer.borderColor = [UIColor grayColor].CGColor;
//    contentView.backgroundColor = [UIColor redColor];
    
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(backImageView.mas_bottom).offset(-120);
        make.left.mas_equalTo(15);
        make.right.mas_equalTo(-15);
        make.bottom.mas_equalTo(0);
    }];
}

- (void)onKefu {
    
}
@end
