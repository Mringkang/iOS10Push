//
//  ViewController.m
//  PushMeBaby
//
//  Created by kangbing on 16/10/13.
//  Copyright © 2016年 kangbing. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor yellowColor];
    
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveMessage:) name:@"TESTPUSH" object:nil];
}

- (void)receiveMessage:(NSNotification *)notifa{

    NSLog(@"------%@",notifa.userInfo[@"aps"][@"alert"]);
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:notifa.userInfo[@"aps"][@"alert"] delegate: nil cancelButtonTitle:@"确定" otherButtonTitles: nil, nil];
    [alert show];
    
    WebViewController *webVC = [[WebViewController alloc]init];
    webVC.url = notifa.userInfo[@"aps"][@"alert"];
    [self presentViewController:webVC animated:YES completion:nil];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"点击了");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
