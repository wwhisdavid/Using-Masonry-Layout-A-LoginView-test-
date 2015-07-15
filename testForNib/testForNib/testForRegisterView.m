//
//  testForRegisterView.m
//  testForNib
//
//  Created by deyi on 15/7/15.
//  Copyright (c) 2015年 deyi. All rights reserved.
//

#import "testForRegisterView.h"
#import "Masonry.h"
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@implementation testForRegisterView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    self.userInteractionEnabled = YES;
    UIImageView *illustrationView = [[UIImageView alloc] init];
    [illustrationView setImage:[UIImage imageNamed:@"ym_login_chatu.png"]];
    illustrationView.userInteractionEnabled = YES;
    [self addSubview:illustrationView];
    self.illustrationView = illustrationView;
    
    UIImageView *bgView1 = [[UIImageView alloc] init];
    bgView1.userInteractionEnabled = YES;
    [bgView1 setImage:[UIImage imageNamed:@"ym_xiaokuang.png"]];
    [self addSubview:bgView1];
    self.bgView1 = bgView1;
    
    UIImageView *bgView2 = [[UIImageView alloc] init];
    bgView2.userInteractionEnabled = YES;
    [bgView2 setImage:[UIImage imageNamed:@"ym_denglutext"]];
    [self addSubview:bgView2];
    self.bgView2 = bgView2;
    
    UITextField *uitf_phone = [[UITextField alloc] init];
    uitf_phone.placeholder = @"请输入手机号";
    uitf_phone.userInteractionEnabled = YES;
    uitf_phone.font = [UIFont systemFontOfSize:14.0];
    [self.bgView1 addSubview:uitf_phone];
    self.uitf_phone = uitf_phone;
    
    UITextField *uitf_yanzhen = [[UITextField alloc] init];
    uitf_yanzhen.placeholder = @"请输入验证码";
    uitf_yanzhen.userInteractionEnabled = YES;
    uitf_yanzhen.font = [UIFont systemFontOfSize:14.0];
    [self.bgView2 addSubview:uitf_yanzhen];
    self.uitf_yanzhen = uitf_yanzhen;
    
    UITextField *uitf_mima = [[UITextField alloc] init];
    uitf_mima.placeholder = @"请设置密码";
    uitf_mima.userInteractionEnabled = YES;
    uitf_mima.font = [UIFont systemFontOfSize:14.0];
    [self.bgView2 addSubview:uitf_mima];
    self.uitf_mima = uitf_mima;
    
    UIButton *bt_send = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt_send setTitle:@"发送验证码" forState:UIControlStateNormal];
    bt_send.layer.cornerRadius = 5.0;
    [bt_send clipsToBounds];
    [bt_send setBackgroundColor:[UIColor colorWithRed:242/255.0 green:59/255.0 blue:61/255.0 alpha:1]];
    [self addSubview:bt_send];
    self.bt_send = bt_send;
    
    UIButton *bt_sure = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt_sure setTitle:@"登录" forState:UIControlStateNormal];
    bt_sure.layer.cornerRadius = 5.0;
    [bt_sure clipsToBounds];
    [bt_sure setBackgroundColor:[UIColor colorWithRed:242/255.0 green:59/255.0 blue:61/255.0 alpha:1]];
    [self addSubview:bt_sure];
    self.bt_sure = bt_sure;
    
    
    [self autoLayout];
    return self;
}

- (void)autoLayout
{
    WS(ws);
    [self.illustrationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(ws.mas_centerX);
        make.height.mas_equalTo(94.0);
        make.width.mas_equalTo(280);
        make.top.equalTo(ws.mas_top).with.offset(10.0);
    }];
    
    [self.bt_send mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.mas_top).with.offset(102.0);
        make.right.equalTo(ws.mas_right).with.offset(- 8.0);
        make.height.mas_equalTo(44.0);
        make.width.mas_equalTo(115.0);
    }];
    
    [self.bgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(44.0);
        make.left.equalTo(ws.mas_left).with.offset(12.0);
        make.right.equalTo(ws.mas_right).with.offset(- 100);
        make.top.equalTo(ws.mas_top).with.offset(102.0);
    }];
    
    [self.uitf_phone mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(30.0);
        make.top.equalTo(ws.illustrationView.mas_bottom).with.offset(5.0);
        make.left.equalTo(ws.mas_left).with.offset(25.0);
        make.right.equalTo(ws.bt_send.mas_left).with.offset(- 8.0);
    }];
    
    [self.bgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(90.0);
        make.top.equalTo(ws.bt_send.mas_bottom).with.offset(14.0);
        make.left.equalTo(ws.mas_left).with.offset(12.0);
        make.right.equalTo(ws.mas_right).with.offset(- 8);
    }];
    
    [self.uitf_yanzhen mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(30.0);
        make.top.equalTo(ws.bt_send.mas_bottom).with.offset(22.0);
        make.left.equalTo(ws.mas_left).with.offset(25.0);
        make.right.equalTo(ws.mas_right).with.offset(- 25.0);
    }];
    
    [self.uitf_mima mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(30.0);
        make.top.equalTo(ws.uitf_yanzhen.mas_bottom).with.offset(17.0);
        make.left.equalTo(ws.mas_left).with.offset(25.0);
        make.right.equalTo(ws.mas_right).with.offset(- 25.0);
    }];
    
    [self.bt_sure mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).with.offset(85.0);
        make.right.equalTo(ws.mas_right).with.offset(- 85.0);
        make.top.equalTo(ws.bgView2.mas_bottom).with.offset(25.0);
        make.height.mas_equalTo(46.0);
        

    }];
}



@end
