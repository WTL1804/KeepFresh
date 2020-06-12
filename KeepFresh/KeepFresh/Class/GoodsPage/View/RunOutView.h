//
//  RunOutView.h
//  KeepFresh
//
//  Created by 王天亮 on 2020/6/12.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseTableViewCell;
NS_ASSUME_NONNULL_BEGIN

@interface RunOutView : UIView
@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) BaseTableViewCell *baseCell;
@property (nonatomic, strong) NSMutableArray *itemsOverDueMutArray;
@end

NS_ASSUME_NONNULL_END
