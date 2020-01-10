//
//  SampleOneViewController.h
//  NSCollectionViewSample
//
//  Created by gensee on 2020/1/9.
//  Copyright © 2020年 sheng. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GroupViewItem.h"
#import "GroupCollectionView.h"
NS_ASSUME_NONNULL_BEGIN

@interface SampleOneViewController : NSWindowController
//a collectionview must have clip(maybe) and scrollview
@property (strong) GroupCollectionView *groupCollectionView;
@property (strong) NSMutableArray *groupDatas;

@end

NS_ASSUME_NONNULL_END
