//
//  AFAppDotNetAPIClient.h
//  SampleToday
//
//  Created by Renato Matos on 2/03/16.
//  Copyright © 2016 Studio WO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"

@interface AFAppDotNetAPIClient : AFHTTPSessionManager

+ (instancetype)sharedClient;

@end
