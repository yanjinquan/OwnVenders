//
//  JQLendClub.m
//  ScroolLendingClub
//
//  Created by mac on 16/3/9.
//  Copyright © 2016年 闫金泉. All rights reserved.
//



#import "JQLendClub.h"
@implementation ImageItem
- (void)setImage:(UIImage *)image{
    _image = image;
    UIImageView *itemImageV = [[UIImageView alloc]initWithFrame:self.bounds];
    itemImageV.image = image;
    [self addSubview:itemImageV];
}
@end


@interface JQLendClub ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property(nonatomic, strong)UICollectionView *mainScroolView;
@property(nonatomic, strong)UIPageControl *lendPageC;
@end
@implementation JQLendClub

#define Identifier @"ImageItem"
#define DefaultShowScrollIndicator NO
#define DefaultShowPageControl YES
#define LendPageCDefaultCenter CGPointMake(self.center.x, self.frame.size.height * 4 / 5)
#define LendPageCDefaultSize CGSizeMake(self.bounds.size.width * 2 / 3, 44)
#define RGBColor(r, g, b) [UIColor colorWithRed:r green:g blue:b alpha:1]
#define lendPageCUserInterDefault NO
- (void)layoutSubviews{
    [super layoutSubviews];
    self.ShowScrollIndicator = DefaultShowScrollIndicator;
    self.showPageControl = DefaultShowPageControl;
    [self addSubview:self.mainScroolView];
    if (!_lendPageC && self.showPageControl) {
        self.lendPageC.numberOfPages = self.images.count;
        self.lendPageC.currentPage = 0;
    }
}
#pragma mark --Delegate or DataSource
//UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.images.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ImageItem *item = [self.mainScroolView dequeueReusableCellWithReuseIdentifier:Identifier forIndexPath:indexPath];
    item.image = self.images[indexPath.row];
    
    return item;
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger pageCurrent;
    if (!self.sliedDirection) {
        pageCurrent = scrollView.contentOffset.x / scrollView.bounds.size.width;
    }else{
        pageCurrent = scrollView.contentOffset.y / scrollView.bounds.size.height;
    }
    self.lendPageC.currentPage = pageCurrent;
}
#pragma mark --My approach --- private
- (void)pagecurrentChanged: (UIPageControl *)pageC{
    if (self.sliedDirection) {
        [self.mainScroolView scrollToItemAtIndexPath:[NSIndexPath indexPathForRow:pageC.currentPage inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredVertically animated:YES];
    }{
    [self.mainScroolView scrollToItemAtIndexPath:[NSIndexPath indexPathForRow:pageC.currentPage inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    }
}

#pragma mark --My approach --- protected


#pragma mark --Lazy--
- (UICollectionView *)mainScroolView{
    if (!_mainScroolView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        if (!self.sliedDirection) {
            layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        }
        layout.minimumInteritemSpacing = 0;
        layout.minimumLineSpacing = 0;
        layout.itemSize = CGSizeMake(self.frame.size.width, self.frame.size.height);
        self.mainScroolView = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:layout];
        self.mainScroolView.backgroundColor = [UIColor magentaColor];
        
        _mainScroolView.dataSource = self;
        _mainScroolView.delegate = self;
        _mainScroolView.showsHorizontalScrollIndicator = self.ShowScrollIndicator;
        _mainScroolView.showsVerticalScrollIndicator = self.ShowScrollIndicator;
        _mainScroolView.pagingEnabled = YES;
        _mainScroolView.bounces = NO;
        [_mainScroolView registerClass:[ImageItem class] forCellWithReuseIdentifier:Identifier];
    }
    return _mainScroolView;
}

- (UIPageControl *)lendPageC{
    if (!_lendPageC) {
        CGRect defaultFrameSize = {{0, 0}, LendPageCDefaultSize};
        self.lendPageC = [[UIPageControl alloc]initWithFrame:defaultFrameSize];
        _lendPageC.center = LendPageCDefaultCenter;
        [_lendPageC addTarget:self action:@selector(pagecurrentChanged:) forControlEvents:UIControlEventTouchUpInside];
        _lendPageC.currentPageIndicatorTintColor = [UIColor grayColor];
        _lendPageC.userInteractionEnabled = lendPageCUserInterDefault;
        [self addSubview:_lendPageC];
    }
    return _lendPageC;
}
#pragma mark --setter--
- (void)setImages:(NSArray<UIImage *> *)images{
    _images = images;
    if (_mainScroolView){
        [self.mainScroolView reloadData];
    }
}
- (void)setPageControlUserInter:(BOOL)PageControlUserInter{
    _PageControlUserInter = PageControlUserInter;
    self.lendPageC.userInteractionEnabled = _PageControlUserInter;
}
@end
