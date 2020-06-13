//
//  RunOutCell.h
//  KeepFresh
//
//  Created by 王天亮 on 2020/6/13.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import "BaseTableViewCell.h"
@class ModelRunOut;
@class BezierPathView;
NS_ASSUME_NONNULL_BEGIN

@interface ModelRunOutCell : BaseTableViewCell
@property (nonatomic, strong) UIImageView *imageViewOfItems;
@property (nonatomic, strong) UILabel *deadLineLabel;
@property (nonatomic, strong) UILabel *addDateLabel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *attributeLabel;
@property (nonatomic, strong) BezierPathView *bezierView;
@property (nonatomic, strong) ModelRunOut *modelRunOut;
@end

NS_ASSUME_NONNULL_END
