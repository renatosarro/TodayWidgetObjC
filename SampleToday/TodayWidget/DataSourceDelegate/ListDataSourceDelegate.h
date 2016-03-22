//
//  ListDataSourceDelegate.h
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListDataSourceDelegate : NSObject<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *listItens;

@end
