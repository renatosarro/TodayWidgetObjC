//
//  AFAppDotNetAPIClient.m
//  SampleToday
//
//  Created by Renato Matos on 2/03/16.
//  Copyright © 2016 Studio WO. All rights reserved.
//

#import "AFAppDotNetAPIClient.h"

static NSString * const baseURLString = @"https://api.github.com/repos/CocoaHeadsBrasil/equinociOS/";

@implementation AFAppDotNetAPIClient

+ (instancetype)sharedClient {
    static AFAppDotNetAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[AFAppDotNetAPIClient alloc] initWithBaseURL:[NSURL URLWithString:baseURLString]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    });
    
    return _sharedClient;
}

@end
