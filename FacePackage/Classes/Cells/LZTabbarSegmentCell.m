//
//  LZTabbarSegmentCell.m
//  FacePackage
//
//  Created by yongqiang li on 2020/5/4.
//

#import "LZTabbarSegmentCell.h"
#import <Masonry/Masonry.h>

@interface LZTabbarSegmentCell ()

@property (nonatomic) UILabel *emojiLabel;
@property (nonatomic) UIImageView *emojiImageView;
@property (nonatomic) UIView *selectView;


@end

@implementation LZTabbarSegmentCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.selectView];
        [self.selectView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
        }];
        [self.contentView addSubview:self.emojiImageView];
        [self.emojiImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.contentView);
            make.height.width.equalTo(@30);
        }];
        [self.contentView addSubview:self.emojiLabel];
        [self.emojiLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView).offset(2);
            make.right.equalTo(self.contentView).offset(-2);
            make.centerY.equalTo(self.contentView);
        }];
    }
    return self;
}

- (void)setFaceModel:(LZFaceModel *)faceModel
{
    _faceModel = faceModel;
    if (_faceModel.faceType == LZFaceType_Default) {
        self.emojiLabel.text = _faceModel.emojiName;
        self.emojiImageView.image = nil;
    } else {
        self.emojiLabel.text = nil;
        self.emojiImageView.image = [UIImage imageWithContentsOfFile:_faceModel.emojiImg];
    }
    
    if (_faceModel.isSelect) {
        self.selectView.hidden = NO;
    } else {
        self.selectView.hidden = YES;
    }
    
}

- (UIView *)selectView
{
    if (!_selectView) {
        _selectView = [[UIView alloc] initWithFrame:CGRectZero];
        _selectView.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.6];
    }
    return _selectView;
}

- (UILabel *)emojiLabel
{
    if (!_emojiLabel) {
        _emojiLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _emojiLabel.font = [UIFont systemFontOfSize:14];
//        _emojiLabel.textColor = [UIColor blackColor];
        _emojiLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _emojiLabel;
}

- (UIImageView *)emojiImageView
{
    if (!_emojiImageView) {
        _emojiImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _emojiImageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _emojiImageView;
}



@end
