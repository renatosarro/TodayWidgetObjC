//
//  API_Equi.h
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface API_Equi : NSObject

+ (void)getPosts:(void (^)(NSArray *list))successBlock errorBlock:(void (^)(NSString *stringError))errorBlock;

@end
