//
//  BaseMantleModel.m
//  SampleToday
//
//  Created by Renato Matos on 2/03/16.
//  Copyright © 2016 Studio WO. All rights reserved.
//

#import "BaseMantleModel.h"

@implementation BaseMantleModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return [NSDictionary mtl_identityPropertyMapWithModel:self.class];
}

-(NSDictionary*)asDict{
    NSError *error;
    NSDictionary *JSONDictionary = [MTLJSONAdapter JSONDictionaryFromModel:self error:&error];
    return JSONDictionary;
}



+(instancetype)parse:(NSDictionary*)dc{
    NSError *error;
    return [self parse:dc error:error];
}

+(instancetype)parse:(NSDictionary*)dc error:(NSError*)error{
    id client = [MTLJSONAdapter modelOfClass:self.class
                          fromJSONDictionary:dc
                                       error:&error];
    return client;
}

@end

@implementation BaseMantleModel (Collections)

+(NSArray*)asArrayOfDictFromModelArray:(NSArray*)objects{
    NSError *error;
    NSArray *array = [MTLJSONAdapter JSONArrayFromModels:objects  error:&error];
    return array;
}

+(NSArray*)parseArray:(NSArray*)objs{
    NSError *error = nil;
    NSArray *objects = [MTLJSONAdapter modelsOfClass:self.class
                                fromJSONArray:objs
                                        error:&error];
    
    return objects;
}

@end

