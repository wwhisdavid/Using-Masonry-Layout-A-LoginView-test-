//
//  testForTextView.m
//  testForNib
//
//  Created by deyi on 15/7/15.
//  Copyright (c) 2015年 deyi. All rights reserved.
//

#import "testForTextView.h"
#import "Masonry.h"
#define phoneTopMargin 23.0
#define phoneTextFieldHeight 30.0
#define textFieldMarginLR 25.0
#define textFieldMarginTop 30.0
#define lineViewMarginTop 15.0
#define lineViewMarginLR 10.0
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
@implementation testForTextView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    UIImageView *bgView = [[UIImageView alloc] init];
    bgView.image = [UIImage imageNamed:@"ym_denglutext.png"];
    [self addSubview:bgView];
    self.bgView = bgView;
    
    UIButton *btn_zc = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_zc.backgroundColor = [UIColor redColor];
    btn_zc.titleLabel.text = @"注册";
    btn_zc.titleLabel.font = [UIFont systemFontOfSize:14];
    [self addSubview:btn_zc];
    self.btn_zc = btn_zc;
    
    UIButton *btn_wj = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_wj.backgroundColor = [UIColor redColor];
    btn_wj.titleLabel.text = @"忘记密码";
    btn_wj.titleLabel.font = [UIFont systemFontOfSize:14];
    [self addSubview:btn_wj];
    self.btn_wj = btn_wj;
    
    UIButton *btn_go = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_go.backgroundColor = [UIColor redColor];
    btn_go.titleLabel.text = @"登录";
    btn_go.titleLabel.font = [UIFont systemFontOfSize:17];
    [self addSubview:btn_go];
    self.btn_go = btn_go;
    
    UIButton *btn_deyi = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_deyi.backgroundColor = [UIColor redColor];
    btn_deyi.titleLabel.text = @"得意用户登录";
    btn_deyi.titleLabel.textColor = [UIColor blackColor];
    btn_deyi.titleLabel.font = [UIFont systemFontOfSize:17];
    [self addSubview:btn_deyi];
    self.btn_deyi = btn_deyi;
    
    UITextField *uitf_phone = [[UITextField alloc] init];
    uitf_phone.placeholder = @"请输入手机号";
    uitf_phone.font =  [UIFont systemFontOfSize:14];
    [self.bgView addSubview:uitf_phone];
    self.uitf_phone = uitf_phone;

    UITextField *uitf_mima = [[UITextField alloc] init];
    uitf_mima.placeholder = @"请输入密码";
    uitf_mima.font =  [UIFont systemFontOfSize:14];
    [self.bgView addSubview:uitf_mima];
    self.uitf_mima = uitf_mima;
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor blackColor];
    lineView.alpha = 0.1;
    [self addSubview:lineView];
    self.lineView = lineView;

    return self;
}

- (void)layoutSubviews
{
    WS(ws);
    [self.uitf_phone mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.mas_top).with.offset(phoneTopMargin);
        make.left.equalTo(ws.mas_left).with.offset(textFieldMarginLR);
        make.right.equalTo(ws.mas_right).with.offset(- textFieldMarginLR);
        make.height.mas_equalTo(phoneTextFieldHeight);
    }];
    
    [self.uitf_mima mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.uitf_phone.mas_bottom).offset(textFieldMarginTop);
        make.left.equalTo(ws.mas_left).with.offset(textFieldMarginLR);
        make.right.equalTo(ws.mas_right).with.offset(- textFieldMarginLR);
        make.height.mas_equalTo(phoneTextFieldHeight);
    }];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(2.0);
        make.left.equalTo(ws.mas_left).with.offset(lineViewMarginLR);
        make.right.equalTo(ws.mas_right).with.offset(- lineViewMarginLR);
        make.top.equalTo(ws.uitf_phone.mas_bottom).with.offset(lineViewMarginTop);
    }];
    
    [self.btn_go mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.uitf_mima.mas_bottom).with.offset(30.0);
        make.left.equalTo(ws.mas_left).with.offset(85.0);
        make.right.equalTo(ws.mas_right).with.offset(- 85.0);
        make.height.mas_equalTo(45.0);
    }];
    
    [self.btn_deyi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.btn_go.mas_bottom).with.offset(17.0);
        make.left.equalTo(ws.mas_left).with.offset(85.0);
        make.right.equalTo(ws.mas_right).with.offset(- 85.0);
        make.height.mas_equalTo(45.0);
    }];
    
    [self.btn_zc mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).with.offset(12.0);
        make.bottom.equalTo(ws.mas_bottom).with.offset(4.0);
        make.width.mas_equalTo(46.0);
        make.height.mas_equalTo(18.0);
    }];
    
    [self.btn_wj mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(ws.mas_right).with.offset(- 12.0);
        make.bottom.equalTo(ws.mas_bottom).with.offset(4.0);
        make.width.mas_equalTo(67.0);
        make.height.mas_equalTo(18.0);
    }];
    
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(90.0);
        make.left.equalTo(ws.mas_left).with.offset(10.0);
        make.top.equalTo(ws.mas_top).with.offset(15.0);
        make.right.equalTo(ws.mas_right).with.offset(- 10.0);

    }];
}


@end
