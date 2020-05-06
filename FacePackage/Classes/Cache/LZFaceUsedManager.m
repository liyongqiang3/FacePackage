//
//  LZFaceUsedManager.m
//  FacePackageDemo
//
//  Created by yongqiang li on 2020/5/6.
//  Copyright © 2020 yongqiang li. All rights reserved.
//

#import "LZFaceUsedManager.h"
#import <FacePackage/LZFaceModel.h>

@interface LZFaceUsedManager()

@property (nonatomic) NSMutableArray *userFaceModelArray;
@property (nonatomic) NSInteger maxCount;

@end

@implementation LZFaceUsedManager

static LZFaceUsedManager *instance = nil;

+ (instancetype)shareInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _userFaceModelArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)setFaceModelMaxCount:(NSInteger)count
{
    _maxCount = count;
}

- (void)addUsedFaceModel:(LZFaceModel *)faceModel
{
    if (faceModel.faceType == LZFaceType_Default) {
        
    }
}

- (NSArray <LZFaceModel *>*)getUsedFaceModels
{
    return nil;
}

#pragma  mark --------- 本地缓存

- (void)saveFaceModelArray
{
    
}

@end
