//
//  RunOutView.m
//  KeepFresh
//
//  Created by 王天亮 on 2020/6/12.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import "RunOutView.h"
#import "BaseModel.h"
#import "BaseTableViewCell.h"
@implementation RunOutView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)setUI {
    _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    _mainTableView.delegate = self;
    _mainTableView.dataSource = self;
    [self addSubview:_mainTableView];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _itemsRunOutMutArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.frame.size.height * 1.5 / 6;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BaseModel *model = [BaseModel initWithDictionary:_itemsRunOutMutArray[indexPath.section]];
    NSString *string = [NSString stringWithUTF8String:object_getClassName(model)];
    string = [string stringByAppendingString:@"Cell"];
    _baseCell = [_mainTableView dequeueReusableCellWithIdentifier:string];
    if (_baseCell == nil) {
        _baseCell = [BaseTableViewCell initWithModel:model];
    }
    [_baseCell setLayOutInSubclass:model];
    return _baseCell;
}

@end
