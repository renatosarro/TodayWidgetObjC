//
//  PostModel.h
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseMantleModel.h"

@interface PostModel : BaseMantleModel

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *body;

@end
