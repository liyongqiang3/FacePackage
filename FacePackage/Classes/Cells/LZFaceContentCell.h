//
//  LZFaceContentCell.h
//  FacePackage
//
//  Created by yongqiang li on 2020/5/4.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@class  LZFaceModel;

@interface LZFaceContentCell : UICollectionViewCell

@property (nonatomic,readonly) UILabel *emojiLabel;
@property (nonatomic,readonly) UIImageView *emojiImageView;


@property (nonatomic) LZFaceModel *faceModel;

@end

NS_ASSUME_NONNULL_END
