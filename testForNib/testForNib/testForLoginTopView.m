//
//  testForLoginTopView.m
//  testForNib
//
//  Created by deyi on 15/7/15.
//  Copyright (c) 2015年 deyi. All rights reserved.
//

#import "testForLoginTopView.h"
#import "Masonry.h"
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
#define bgColor [UIColor colorWithRed:218/255.0 green:181/255.0 blue:135/255.0 alpha:1]
#define labelHeight 25.0
#define labelWidth 135.0
#define labelTopMargin 10.0
#define lineMargin 10.0
#define btnWH 30.0
#define btnMarginLR 92.0
#define btnMarginTop 14.0

@implementation testForLoginTopView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    UIButton *qqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [qqBtn setImage:[UIImage imageNamed:@"qq"] forState:UIControlStateNormal];
    [self addSubview:qqBtn];
    self.qqbtn = qqBtn;
    
    UIButton *wxBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [wxBtn setImage:[UIImage imageNamed:@"weixin"] forState:UIControlStateNormal];
    [self addSubview:wxBtn];
    self.wxbtn = wxBtn;
    
    UIButton *weiboBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [weiboBtn setImage:[UIImage imageNamed:@"weibo"] forState:UIControlStateNormal];
    [self addSubview:weiboBtn];
    self.weibobtn = weiboBtn;
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = bgColor;
    [self addSubview:view1];
    self.view1 = view1;
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = bgColor;
    [self addSubview:view2];
    self.view2 = view2;

    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"使用合作网站账号登陆";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = bgColor;
    label.font = [UIFont systemFontOfSize:12];
    [self addSubview:label];
    self.label = label;

    return self;
}

- (void)layoutSubviews
{
    WS(ws);
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(ws.mas_centerX);
        make.height.mas_equalTo(labelHeight);
        make.width.mas_equalTo(labelWidth);
        make.top.equalTo(ws.mas_top).with.offset(labelTopMargin);
    }];
    
    [self.view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(ws.label.mas_left);
        make.height.mas_equalTo(1.0);
        make.centerY.mas_equalTo(ws.label.mas_centerY);
        make.left.equalTo(ws.mas_left).with.offset(lineMargin);
    }];
    
    [self.view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.label.mas_right);

        make.height.mas_equalTo(1.0);
//        make.centerY.mas_equalTo(ws.label.mas_centerY);
        make.centerY.mas_equalTo(ws.view1.mas_centerY);
        make.right.equalTo(ws.mas_right).with.offset(- lineMargin);
    }];
    
    [self.qqbtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(btnWH);
        make.height.mas_equalTo(btnWH);
        make.left.equalTo(ws.mas_left).with.offset(btnMarginLR);
        make.top.equalTo(ws.label.mas_bottom).with.offset(btnMarginTop);
    }];
    
    [self.weibobtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(btnWH);
        make.height.mas_equalTo(btnWH);
        make.centerX.equalTo(ws.mas_centerX);
        make.top.equalTo(ws.label.mas_bottom).with.offset(btnMarginTop);
    }];
    
    [self.wxbtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(btnWH);
        make.height.mas_equalTo(btnWH);
        make.right.equalTo(ws.mas_right).with.offset(- btnMarginLR);
        make.top.equalTo(ws.label.mas_bottom).with.offset(btnMarginTop);
    }];
}

@end
