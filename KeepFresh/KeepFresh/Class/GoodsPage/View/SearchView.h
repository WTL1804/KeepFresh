//
//  SearchView.h
//  KeepFresh
//
//  Created by 王天亮 on 2020/4/27.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol passNameFromSelectCellDelegate <NSObject>

- (void)passNameStrig:(NSString *)string;

- (void)clickCancelButton;

@end

@interface SearchView : UIView <UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIView *headView;

@property (nonatomic, strong) UITextField *searchField;

@property (nonatomic, strong) UITableView *mainTableView;

@property (nonatomic, strong) NSMutableArray *resultMutArray;

@property (nonatomic, copy) void(^changeTextBlock)(NSString *string);

@property (nonatomic, strong) UIButton *cancelButton;

@property (nonatomic, weak) id <passNameFromSelectCellDelegate> passNameFromCellDelegate;

- (void)setUI;

@end

NS_ASSUME_NONNULL_END
