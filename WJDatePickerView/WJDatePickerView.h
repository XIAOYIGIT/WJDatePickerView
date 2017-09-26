//
//  WJDatePickerView.h
//  WJDatePickerView
//
//  Created by 肖毅 on 2017/8/28.
//  Copyright © 2017年 肖毅. All rights reserved.
//

#import <UIKit/UIKit.h>

//取消按钮点击事件
typedef void(^WJDatePickerViewCancelBlock)();

//确定按钮点击事件
typedef void(^WJDatePickerViewSureBlock)(NSDate * date);

@interface WJDatePickerView : UIView

@property(nonatomic,copy)WJDatePickerViewCancelBlock cancel_block;
@property(nonatomic,copy)WJDatePickerViewSureBlock sure_block;
@property (nonatomic, assign) BOOL isRestrict;

+(instancetype)dateViewWithcancelBtClcik:(WJDatePickerViewCancelBlock)cancelBlock sureBtClcik:(WJDatePickerViewSureBlock)sureBlock;

@end
