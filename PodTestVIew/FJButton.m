//
//  FJButton.m
//  XianBai
//
//  Created by 孟凡君 on 2017/12/4.
//  Copyright © 2017年 孟凡君. All rights reserved.
//

#import "FJButton.h"

@implementation FJButton

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self setupBtn];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self setupBtn];
    }
    return self;
}

- (void)setupBtn{
    
    [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont systemFontOfSize:16.0f];
    
//    self.backgroundColor = [UIColor clearColor];
//    self.titleLabel.backgroundColor =[UIColor yellowColor];
//    self.imageView.backgroundColor = [UIColor redColor];

}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    //设置按钮的内边距
    //1、计算label的frame
    // 根据字体得到NSString的尺寸
//    CGSize size = [self.titleLabel.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:16.0f],NSFontAttributeName,nil]];
//    CGFloat nameW = size.width;
    // 从新布局图片内容imageView
    self.imageView.frame = CGRectMake(0, 0, 30, 30);
    self.titleLabel.frame = CGRectMake(33, 0, self.frame.size.width-33, 30);
    // 2、计算image
//    self.imageView.mj_x = CGRectGetMaxX(self.titleLabel.frame) +3;
//    self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.mj_w, 0, self.imageView.mj_w);
//    self.imageEdgeInsets = UIEdgeInsetsMake(0, nameW, 0, -nameW);
}


@end
