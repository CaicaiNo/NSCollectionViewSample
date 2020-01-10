//
//  GroupCollectionView.m
//  Training
//
//  Created by gensee on 2020/1/9.
//  Copyright © 2020年 Gensee Inc. All rights reserved.
//

#import "GroupCollectionView.h"

@implementation GroupCollectionView

- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    if (self) {
        [self setWantsLayer:YES];
        NSArray* array;
        [[NSBundle mainBundle]loadNibNamed:@"GroupCollectionView" owner:self topLevelObjects:&array];
        for(NSView * customView in array){
            if ([customView isKindOfClass:[NSView class]]) {
                [customView setFrame:NSMakeRect(0, 0, frameRect.size.width, frameRect.size.height)];
                [self addSubview:customView];
                break;
            }
        }
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
