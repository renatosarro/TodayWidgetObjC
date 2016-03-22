//
//  ListDataSourceDelegate.m
//  SampleToday
//
//  Created by Renato Matos on 22/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import "ListDataSourceDelegate.h"
#import "BaseTableViewCell.h"

@implementation ListDataSourceDelegate

#pragma mark - Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 44.0f;
    
}

#pragma mark - Data Sourge

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 4;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BaseTableViewCell" forIndexPath:indexPath];
    
    PostModel *post = [self.listItens objectAtIndex:indexPath.row];
    
    cell.model = post;
    
    return cell;
}

@end
