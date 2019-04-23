//
//  PLBillController.m
//  PanyLoan
//
//  Created by JADE on 2019/4/22.
//  Copyright © 2019 JADE. All rights reserved.
//

#import "PLBillController.h"

#import <Masonry.h>

@interface PLBillController ()

@property (strong, nonatomic) UIImageView *empView;
@property (strong, nonatomic) UILabel *decLabel;
@end

@implementation PLBillController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"账单";
    self.navigationController.navigationBar.titleTextAttributes = @{NSFontAttributeName : [UIFont systemFontOfSize:16], NSForegroundColorAttributeName : [UIColor blackColor]};
    
    UIButton *shareButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 44)];
    [shareButton setImage:[UIImage imageNamed:@"20jpg"] forState:UIControlStateNormal];
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithCustomView:shareButton];
    [shareButton addTarget:self action:@selector(onMessage) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = right;
    
    [self initUI];
}

- (void)initUI {
    
    _empView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"19jpg"]];
    [self.view addSubview:_empView];
    
    [_empView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(200, 180));
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.mas_equalTo(80);
//        make.centerY.equalTo(self.view.mas_centerY);
    }];
    
    _decLabel = [[UILabel alloc] init];
    _decLabel.font = [UIFont systemFontOfSize:12];
    _decLabel.textColor = [UIColor grayColor];
    _decLabel.text = @"您还没有借过钱哦";
    [self.view addSubview:_decLabel];
    
    [_decLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.centerX.equalTo(self.view.mas_centerX);
        make.height.mas_equalTo(21);
    }];
}


- (void)onMessage {
    
    NSLog(@"");
}

@end
