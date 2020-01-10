//
//  GroupViewItem.m
//  Training
//
//  Created by gensee on 2020/1/9.
//  Copyright © 2020年 Gensee Inc. All rights reserved.
//

#import "GroupViewItem.h"

@interface GroupViewItem ()

@end

@implementation GroupViewItem


- (void)awakeFromNib {
    [super awakeFromNib];
    [self.bubbleLabel setWantsLayer:YES];
    self.bubbleLabel.layer.cornerRadius = self.bubbleLabel.bounds.size.height/2;
    
    [self.view setWantsLayer:YES];
    self.view.layer.borderColor = [NSColor blackColor].CGColor;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    if (selected) {
        self.view.layer.borderWidth = 1.f;
    }else {
        self.view.layer.borderWidth = 0.f;
    }
    
    
}

- (void)setPresentData:(GroupViewData *)presentData {
    _presentData = presentData;
    if (_presentData.bubbleCount <= 0) {
        self.bubbleLabel.hidden = YES;
    }else {
        self.bubbleLabel.hidden = NO;
        if (_presentData.bubbleCount > 999) {
            self.bubbleLabel.stringValue = @"999+";
        }else {
            self.bubbleLabel.stringValue = [NSString stringWithFormat:@"%u",_presentData.bubbleCount];
        }
        [self.bubbleLabel sizeToFit];
        NSRect bounds = self.bubbleLabel.bounds;
        bounds.size.width += 4;
        self.bubbleLabel.bounds = bounds;
        self.bubbleLabel.alignment = NSTextAlignmentCenter;
    }
    
    if (_presentData.name) {
        self.textField.stringValue = _presentData.name;
        self.imageView.image = [NSImage imageNamed:@"group"];
    }else {
        self.textField.stringValue = @"全部";
        self.imageView.image = [NSImage imageNamed:@"group"];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

@end
