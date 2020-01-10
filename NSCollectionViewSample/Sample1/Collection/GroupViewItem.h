//
//  GroupViewItem.h
//  Training
//
//  Created by gensee on 2020/1/9.
//  Copyright © 2020年 Gensee Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GroupViewData.h"
//IB_DESIGNABLE

@interface GroupViewItem : NSCollectionViewItem

//@property (nonatomic,assign) IBInspectable CGFloat borderWidth;
//
//@property (nonatomic,assign) IBInspectable CGFloat cornerRadius;
@property (weak) IBOutlet NSTextField *bubbleLabel;

@property (nonatomic,strong) GroupViewData *presentData;

@end

