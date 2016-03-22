//
//  BaseMantleModel.h
//  SampleToday
//
//  Created by Renato Matos on 2/03/16.
//  Copyright © 2016 Studio WO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle.h>

@interface BaseMantleModel : MTLModel<MTLJSONSerializing>

-(NSDictionary*)asDict;
+(instancetype)parse:(NSDictionary*)dc; 
+(instancetype)parse:(NSDictionary*)dc error:(NSError*)error;


@end

@interface BaseMantleModel (Collections)
+(NSArray*)parseArray:(NSArray*)objs;
+(NSArray*)asArrayOfDictFromModelArray:(NSArray*)objects;
@end