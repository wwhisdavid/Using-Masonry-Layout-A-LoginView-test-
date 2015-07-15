//
//  testLoginView.m
//  test
//
//  Created by deyi on 15/7/15.
//  Copyright (c) 2015年 deyi. All rights reserved.
//

#import "testLoginView.h"
#import "Masonry.h"
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
#define marginAccountAndPwd 23.0
#define marginLine 10.0
#define marginBtn 80.0
#define lineViewWidth 2.0
#define textFieldHeight 30.0
#define btnHeight 50.0
@implementation testLoginView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    UITextField *phoneField = [[UITextField alloc] init];
    phoneField.placeholder = @"请输入得意用户名或手机号";
    [self addSubview:phoneField];
    self.tf_phone = phoneField;
    
    UITextField *pwdField = [[UITextField alloc] init];
    pwdField.placeholder = @"请输出密码";
    [self addSubview:pwdField];
    self.tf_mima = pwdField;
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor blackColor];
    lineView.alpha = 0.1;
    [self addSubview:lineView];
    self.lineView = lineView;

    UIButton *loginBtn = [[UIButton alloc] init];
    loginBtn.backgroundColor = [UIColor orangeColor];
    loginBtn.userInteractionEnabled = YES;
    loginBtn.layer.cornerRadius = 10.0;
    [loginBtn clipsToBounds];
    [self addSubview:loginBtn];
    self.btn_go = loginBtn;

    return self;
}


- (void)layoutSubviews
{
    WS(ws);
    [self.tf_phone mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).with.offset(marginAccountAndPwd);
        make.top.equalTo(ws.mas_top).with.offset(marginAccountAndPwd);
        make.right.equalTo(ws.mas_right).with.offset(- marginAccountAndPwd);
        make.height.mas_equalTo(textFieldHeight);
    }];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.tf_phone.mas_bottom).with.offset(marginLine);
        make.left.equalTo(ws.mas_left).with.offset(marginLine);
        make.right.equalTo(ws.mas_right).with.offset(- marginLine);
        make.height.mas_equalTo(lineViewWidth);
    }];
    
    [self.tf_mima mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.lineView.mas_bottom).with.offset(marginLine);
        make.left.equalTo(ws.mas_left).with.offset(marginAccountAndPwd);
        make.right.equalTo(ws.mas_right).with.offset(- marginAccountAndPwd);
        make.height.mas_equalTo(textFieldHeight);
    }];
    
    [self.btn_go mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.tf_mima.mas_bottom).with.offset(marginAccountAndPwd);
        make.left.equalTo(ws.mas_left).with.offset(marginBtn);
        make.right.equalTo(ws.mas_right).with.offset(- marginBtn);
        make.height.mas_equalTo(btnHeight);
    }];
    
}
@end
