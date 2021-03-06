//
//  AllItemsView.h
//  KeepFresh
//
//  Created by 王天亮 on 2020/2/9.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseTableViewCell;
@class BaseModel;
@class BezierPathView;
NS_ASSUME_NONNULL_BEGIN
@protocol PutBackDeletedItemsDelegate <NSObject>

- (void)PutBackDeleted:(NSMutableDictionary *)dict;

@end



@interface AllItemsView : UIView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) BaseTableViewCell *baseCell;
@property (nonatomic, strong) NSMutableArray *itemsOverDueMutArray;
@property (nonatomic, weak) id<PutBackDeletedItemsDelegate>putBackDeleteItemsDelegate;


- (void)setUI;
@end

NS_ASSUME_NONNULL_END
