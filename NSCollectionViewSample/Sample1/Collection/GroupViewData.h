//
//  GroupViewData.h
//  Training
//
//  Created by gensee on 2020/1/9.
//  Copyright © 2020年 Gensee Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
NS_ASSUME_NONNULL_BEGIN

@interface GroupViewData : NSObject
/**
 气泡数量
 */
@property (assign) unsigned int bubbleCount;

@property (strong) NSString *name;

@end

NS_ASSUME_NONNULL_END
