//
//  ViewController.m
//  testForNib
//
//  Created by deyi on 15/7/15.
//  Copyright (c) 2015年 deyi. All rights reserved.
//

#import "ViewController.h"
#import "testLoginView.h"
#import "Masonry.h"
#import "testForLoginTopView.h"
#import "testForTextView.h"
#import "testForRegisterView.h"

#define marginAccount 23.0
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    testLoginView *test = [[testLoginView alloc] init];
    testForRegisterView *test = [[testForRegisterView alloc] init];
    [self.view addSubview:test];
    WS(ws);
    [test mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.view.mas_left).with.offset(marginAccount);
        make.top.equalTo(ws.view.mas_top).with.offset(marginAccount);
        make.right.equalTo(ws.view.mas_right).with.offset(- marginAccount);
        make.height.mas_equalTo(280.0);
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
