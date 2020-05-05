//
//  LZFaceModel.h
//  FacePackage
//
//  Created by yongqiang li on 2020/5/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//NS_ENUM，
typedef NS_ENUM(NSUInteger, LZFaceType) {
    LZFaceType_Default  = 0, // 字符串表情 😁
    LZFaceType_Image = 1 // 自定义图片类型
};

@interface LZFaceModel : NSObject

@property (nonatomic, assign) LZFaceType faceType;
@property (nonatomic, copy) NSString *emojiName;
@property (nonatomic, copy) NSString *emojiImg;
@property (nonatomic, copy) NSString *emojiDescription;
@property (nonatomic, assign) BOOL isSelect;


@end

NS_ASSUME_NONNULL_END
