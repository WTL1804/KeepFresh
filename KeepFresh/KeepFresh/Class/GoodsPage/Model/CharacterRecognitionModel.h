//
//  CharacterRecognitionModel.h
//  KeepFresh
//
//  Created by 王天亮 on 2020/7/22.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CharacterRecognitionModel : JSONModel
@property (nonatomic, copy) NSArray *words_result;
@property (nonatomic, copy) NSString *log_id;
@end

NS_ASSUME_NONNULL_END
