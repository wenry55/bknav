//
//  BkWebViewViewController.m
//  bknav
//
//  Created by BongKyo Seo on 2014. 11. 28..
//  Copyright (c) 2014년 BongKyo Seo. All rights reserved.
//

#import "BkWebViewViewController.h"

@interface BkWebViewViewController ()

@end

@implementation BkWebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.toolbarHidden = NO;
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {

    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.naver.com"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)onBtnClick:(id)sender {

//    self.navigationController.navigationBarHidden = !self.navigationController.navigationBarHidden;
//    self.navigationController.toolbarHidden = !self.navigationController.toolbarHidden;
    
        NSLog(@"onClick");
    
        UIView *view = [[[self.webView.subviews objectAtIndex:0] subviews] objectAtIndex:0];
        CGRect previousFrame = view.frame;
    
    
        NSLog(@"navigationBar frame : %@", NSStringFromCGRect(self.navigationController.navigationBar.frame));
    
    
        if (self.navigationController.navigationBar.frame.origin.y == -44) {
            [UIView animateWithDuration:.5 animations:^{
                self.navigationController.navigationBar.frame = CGRectMake(0, 20, 375, 44);
                view.frame = CGRectMake(previousFrame.origin.x, 0, previousFrame.size.width, previousFrame.size.height);
            }];
    
        } else if (self.navigationController.navigationBar.frame.origin.y == 20) {
            [UIView animateWithDuration:.5 animations:^{
                self.navigationController.navigationBar.frame = CGRectMake(0, -44, 375, 44);
                view.frame = CGRectMake(previousFrame.origin.x, -44, previousFrame.size.width, previousFrame.size.height);
            }];
        }
    

}

@end
