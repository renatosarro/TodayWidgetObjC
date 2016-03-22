//
//  BaseTableViewCell.h
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"

@interface BaseTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *labelTitulo;
@property (weak, nonatomic) IBOutlet UILabel *labelResumo;

@property (strong, nonatomic) PostModel *model;

@end
