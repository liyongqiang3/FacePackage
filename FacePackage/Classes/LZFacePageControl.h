//
//  LZFacePageControl.h
//  FacePackage
//
//  Created by yongqiang li on 2020/5/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LZFacePageControlDelegate <NSObject>

- (void)emojiPageControlSelectIndex:(NSInteger)index;

@end

@interface LZFacePageControl : UIView

@property (nonatomic, assign) NSInteger pageCount;
@property (nonatomic, assign) NSInteger currentPage;
@property (nonatomic, weak) id<LZFacePageControlDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
