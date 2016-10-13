//
//  WebViewController.m
//  PushMeBaby
//
//  Created by kangbing on 16/10/13.
//  Copyright © 2016年 kangbing. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()<UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor darkGrayColor];
    self.webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    self.webView.delegate = self;
    self.webView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.webView];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]]];
    
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{

    return YES;

}

- (void)webViewDidStartLoad:(UIWebView *)webView{

    NSLog(@"开始");

}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    NSLog(@"结束");

}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{

    
    NSLog(@"失败%@",error);
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

@end
