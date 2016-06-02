//
//  ViewController.m
//  MyDome
//
//  Created by anlaiye on 16/6/2.
//  Copyright © 2016年 wangmingmin. All rights reserved.
//

#import "ViewController.h"
#import "NNQrCodeView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NNQrCodeView *tempV = [[NNQrCodeView alloc] initWithURLStr:@"000" contenSize:CGSizeMake(276, 276)];
    tempV.frame = CGRectMake(132, 100, 276, 276);
    tempV.backgroundColor = [UIColor redColor];
    [self.view addSubview:tempV];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
