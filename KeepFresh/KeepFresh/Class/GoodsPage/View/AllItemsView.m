//
//  AllItemsView.m
//  KeepFresh
//
//  Created by 王天亮 on 2020/2/9.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import "AllItemsView.h"
#import "BaseTableViewCell.h"
#import "BaseModel.h"

@implementation AllItemsView

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
    return _itemsOverDueMutArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.frame.size.height * 1.5 / 6;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BaseModel *model = [BaseModel initWithDictionary:_itemsOverDueMutArray[indexPath.section]];
    NSString *string = [NSString stringWithUTF8String:object_getClassName(model)];
    string = [string stringByAppendingString:@"Cell"];
    _baseCell = [_mainTableView dequeueReusableCellWithIdentifier:string];
    if (_baseCell == nil) {
        _baseCell = [BaseTableViewCell initWithModel:model];
    }
    [_baseCell setLayOutInSubclass:model];
    return _baseCell;
}
//将已经删除的物品放回
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleDelete;
}
- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    return @"放回此物品";
}
- (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObject:indexPath forKey:@"section"];
    dict = _itemsOverDueMutArray[indexPath.section];
    [_itemsOverDueMutArray removeObject:dict];
    NSNumber *number = [NSNumber numberWithInt:2];
    [dict removeObjectForKey:@"itemsState"];
    [dict setValue:number forKey:@"itemsState"];
   // [_itemsDeletedMutArray addObject:dict];
    NSString *dataType = @"ModelTwo";
    [dict removeObjectForKey:@"dataType"];
    [dict setValue:dataType forKey:@"dataType"];
    
    
    [self.putBackDeleteItemsDelegate PutBackDeleted:dict];
    
    [_mainTableView reloadData];
}


@end
