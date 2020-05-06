//
//  LZFaceUsedManager.h
//  FacePackageDemo
//
//  Created by yongqiang li on 2020/5/6.
//  Copyright © 2020 yongqiang li. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LZFaceModel;

NS_ASSUME_NONNULL_BEGIN

@interface LZFaceUsedManager : NSObject

+ (instancetype)shareInstance;

- (void)setFaceModelMaxCount:(NSInteger)count;

- (void)addUsedFaceModel:(LZFaceModel *)faceModel;


- (NSArray <LZFaceModel *>*)getUsedFaceModels;

// 缓存到本地
- (void)saveFaceModelArray;

@end

NS_ASSUME_NONNULL_END
