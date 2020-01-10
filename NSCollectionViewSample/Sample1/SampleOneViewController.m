//
//  SampleOneViewController.m
//  NSCollectionViewSample
//
//  Created by gensee on 2020/1/9.
//  Copyright © 2020年 sheng. All rights reserved.
//

#import "SampleOneViewController.h"

@interface SampleOneViewController () <NSCollectionViewDelegate,NSCollectionViewDataSource>

@end

@implementation SampleOneViewController

- (void)windowDidLoad {
    if (!self.groupCollectionView) {
        self.groupCollectionView = [[GroupCollectionView alloc]initWithFrame:NSMakeRect(0, 0, 220, 507)];
        
        self.groupCollectionView.scrollview.autohidesScrollers
        = NO;
        self.groupCollectionView.scrollview.hasVerticalScroller = YES;
        self.groupCollectionView.collectionView.delegate = self;
        self.groupCollectionView.collectionView.dataSource = self;
        [self.groupCollectionView.collectionView registerNib:[[NSNib alloc]initWithNibNamed:@"GroupViewItem" bundle:nil] forItemWithIdentifier:@"GroupViewItem"];
    }
    [self.window.contentView addSubview:self.groupCollectionView];
    NSMutableArray *dataArray = [NSMutableArray array];
    GroupViewData *main = [GroupViewData new];
    main.bubbleCount = 123;
    [dataArray addObject:main];
    for (int j = 0; j <= 25; j++) {
        GroupViewData *data = [GroupViewData new];
        data.bubbleCount = 0;
        data.name = [NSString stringWithFormat:@"%d班",j];
        [dataArray addObject:data];
    }
    self.groupDatas = dataArray;
    [self.groupCollectionView.collectionView reloadData];
    [self.groupCollectionView.collectionView reloadData];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (NSInteger)numberOfSectionsInCollectionView:(NSCollectionView *)collectionView {
    return 1;
}

- (nonnull NSCollectionViewItem *)collectionView:(nonnull NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(nonnull NSIndexPath *)indexPath {
    GroupViewItem *item = [collectionView makeItemWithIdentifier:@"GroupViewItem" forIndexPath:indexPath];
    if (indexPath.item < self.groupDatas.count) {
        item.presentData = self.groupDatas[indexPath.item];
    }
    
    return item;
}

- (NSInteger)collectionView:(nonnull NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.groupDatas.count;
}

- (void)collectionView:(NSCollectionView *)collectionView didSelectItemsAtIndexPaths:(NSSet<NSIndexPath *> *)indexPaths {
    
    //do you  logic
}

- (NSSize)collectionView:(NSCollectionView *)collectionView layout:(NSCollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.item == 0) {
        //collectionView.bounds 会在视图加载之后改变，会造成值不对
//        NSSize rect = NSMakeSize(collectionView.bounds.size.width, 50);
        NSSize rect = NSMakeSize(203, 50);
        return rect;
    }
    return NSMakeSize(100, 50);
}



@end
