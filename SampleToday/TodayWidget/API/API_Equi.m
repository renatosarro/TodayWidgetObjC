//
//  API_Equi.m
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import "API_Equi.h"
#import "AFAppDotNetAPIClient.h"

#import "PostModel.h"

@implementation API_Equi

+ (void)getPosts:(void (^)(NSArray *list))successBlock errorBlock:(void (^)(NSString *stringError))errorBlock {
    
    [[AFAppDotNetAPIClient sharedClient] GET:@"issues" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
        //Progress
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *arr = [PostModel parseArray:responseObject];
        
        successBlock(arr);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        //Erro
        NSString *string = error.localizedDescription;
        errorBlock(string);
        
    }];
    
}

@end
