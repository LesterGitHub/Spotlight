//
//  ViewController.m
//  Spotlight
//
//  Created by Lester on 16/9/7.
//  Copyright © 2016年 Lester-iOS开发:98787555. All rights reserved.
//

#import "ViewController.h"
#import "XSpotLight.h"
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()<UIAlertViewDelegate,XSpotLightDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*************************************************************************
    *  原文地址:https://github.com/StrongX/XSpotLight                          *
    *  我只是一个搬运工,请作者体量!                                               *
     *************************************************************************/
    
    [[[UIAlertView alloc] initWithTitle:@"即将进入指引" message:@"Lester邀请您加入iOS高级研发群:98787555" delegate:self cancelButtonTitle:@"好的" otherButtonTitles:nil, nil] show];
}

#pragma mark - alert Delegate
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    XSpotLight *SpotLight = [[XSpotLight alloc]init];
    SpotLight.messageArray = @[
                               @"朋友圈",
                               @"点击这里可去你的朋友圈",
                               @"点击这里可以扫一扫",
                               @"这里可以查看附近的人"
                               ];
    SpotLight.rectArray = @[
                            [NSValue valueWithCGRect:CGRectMake(SCREEN_WIDTH/2 + 50,SCREEN_HEIGHT - 30,30,30)],
                            [NSValue valueWithCGRect:CGRectMake(SCREEN_WIDTH/2, 85, 30, 30)],
                            [NSValue valueWithCGRect:CGRectMake(SCREEN_WIDTH/2, 155, 30, 30)],
                            [NSValue valueWithCGRect:CGRectMake(SCREEN_WIDTH/2, 255, 30, 30)]
                            ];
    
    SpotLight.delegate = self;
    [self presentViewController:SpotLight animated:false completion:^{}];

}
-(void)XSpotLightClicked:(NSInteger)index{
    NSLog(@"%ld",(long)index);
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
