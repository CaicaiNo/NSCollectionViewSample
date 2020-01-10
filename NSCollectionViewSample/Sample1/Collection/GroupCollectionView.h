//
//  GroupCollectionView.h
//  Training
//
//  Created by gensee on 2020/1/9.
//  Copyright © 2020年 Gensee Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface GroupCollectionView : NSView

@property (weak) IBOutlet NSCollectionView *collectionView;
@property (weak) IBOutlet NSScroller *verticalScroller;
@property (weak) IBOutlet NSScrollView *scrollview;

@end

NS_ASSUME_NONNULL_END
