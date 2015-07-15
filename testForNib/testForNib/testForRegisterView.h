//
//  testForRegisterView.h
//  testForNib
//
//  Created by deyi on 15/7/15.
//  Copyright (c) 2015年 deyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface testForRegisterView : UIView

@property(strong,nonatomic) UITextField *uitf_phone;
@property(strong,nonatomic) UIButton *bt_send;
@property(strong,nonatomic) UITextField *uitf_yanzhen;
@property(strong,nonatomic) UITextField *uitf_mima;
@property(strong,nonatomic) UIButton *bt_sure;
/**
 *  phoneField背景图
 */
@property(strong,nonatomic) UIImageView *bgView1;
/**
 *  验证码和密码背景图
 */
@property(strong,nonatomic) UIImageView *bgView2;
/**
 *  插图View
 */
@property(strong,nonatomic) UIImageView *illustrationView;

@end
