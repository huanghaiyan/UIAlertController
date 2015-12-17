//
//  ViewController.m
//  UIAlertController
//
//  Created by huanghy on 15/12/17.
//  Copyright © 2015年 huanghy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *alertBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
    [alertBtn setTitle:@"弹出" forState:UIControlStateNormal];
    [alertBtn addTarget:self action:@selector(alertMessage) forControlEvents:UIControlEventTouchUpInside];
    alertBtn.backgroundColor = [UIColor grayColor];
    [self.view addSubview:alertBtn];
}

-(void)alertMessage
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"你好" message:@"哈哈哈哈" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action){
        NSLog(@"取消");
    }];
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"确定");
    }];
    [alertController addAction:cancelAction];
    [alertController addAction:confirmAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
