//
//  RunOutViewController.h
//  KeepFresh
//
//  Created by 王天亮 on 2020/6/12.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RunOutView;
NS_ASSUME_NONNULL_BEGIN

@interface RunOutViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *runOutTempMutArray;

@property (nonatomic, strong) RunOutView *runOutView;

@property (nonatomic, strong) UIBarButtonItem *leftBarButton;

@end

NS_ASSUME_NONNULL_END
