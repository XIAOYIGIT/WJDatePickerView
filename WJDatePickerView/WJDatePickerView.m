//
//  WJDatePickerView.m
//  WJDatePickerView
//
//  Created by 肖毅 on 2017/8/28.
//  Copyright © 2017年 肖毅. All rights reserved
//

#import "WJDatePickerView.h"

@interface WJDatePickerView ()
/**时间选择器*/
@property (weak, nonatomic) IBOutlet UIDatePicker *mainDatePickerView;
/**最底层的View*/
@property (weak, nonatomic) IBOutlet UIView *tapView;

@end

@implementation WJDatePickerView

- (void)awakeFromNib{
    [super awakeFromNib];
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [_tapView addGestureRecognizer:tap];
}

/**初始化控件*/
+(instancetype)dateViewWithcancelBtClcik:(WJDatePickerViewCancelBlock)cancelBlock sureBtClcik:(WJDatePickerViewSureBlock)sureBlock {
    WJDatePickerView * view = [[NSBundle mainBundle] loadNibNamed:@"WJDatePickerView" owner:nil options:nil].firstObject;
    view.frame = [UIScreen mainScreen].bounds;
    view.cancel_block = cancelBlock;
    view.sure_block = sureBlock;
    return view;
}

/**取消按钮回调*/
- (IBAction)cancleButtonAction:(UIButton *)sender {
    self.cancel_block();
}

/**确定按钮回调*/
- (IBAction)sureButtonAction:(UIButton *)sender {
    self.sure_block(self.mainDatePickerView.date);
}

/**点击空白处*/
- (void)tapAction:(UITapGestureRecognizer *)tap{
    self.cancel_block();
}

@end
