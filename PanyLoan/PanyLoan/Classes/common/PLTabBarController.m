//
//  PLTabBarController.m
//  PanyLoan
//
//  Created by JADE on 2019/4/22.
//  Copyright © 2019 JADE. All rights reserved.
//

#import "PLTabBarController.h"

#import "PLNavgationController.h"
#import "PLHomeController.h"
#import "PLBillController.h"
#import "PLMineController.h"

@interface PLTabBarController ()

@end

@implementation PLTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIViewController *one = [[UIViewController alloc] init];
//    one.view.backgroundColor = [UIColor redColor];
//    PLNavgationController *oneNav = [[PLNavgationController alloc] initWithRootViewController:one];
//
//    UIViewController *two = [[UIViewController alloc] init];
//    one.view.backgroundColor = [UIColor blueColor];
//    PLNavgationController *twoNav = [[PLNavgationController alloc] initWithRootViewController:two];
//
//    UIViewController *three = [[UIViewController alloc] init];
//    one.view.backgroundColor = [UIColor purpleColor];
//    PLNavgationController *threeNav = [[PLNavgationController alloc] initWithRootViewController:three];
    
//    [barVC addChildViewController:oneNav];
//    [barVC addChildViewController:twoNav];
//    [barVC addChildViewController:threeNav];
    
    // 添加子控制器
    [self setupChildVc:[[PLBillController alloc] init] title:@"账单" image:@"bill" selectedImage:@"main"];
    
    [self setupChildVc:[[PLHomeController alloc] init] title:@"首页" image:@"bill" selectedImage:@"main"];
    
    [self setupChildVc:[[PLMineController alloc] init] title:@"我的" image:@"bill" selectedImage:@"main"];
    
    self.selectedIndex = 1;
}

- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    PLNavgationController *nav = [[PLNavgationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:nav];
}


@end
