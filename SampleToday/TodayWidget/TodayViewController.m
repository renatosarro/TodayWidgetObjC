//
//  TodayViewController.m
//  TodayWidget
//
//  Created by Renato Matos on 18/03/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

#import "ListDataSourceDelegate.h"

#import "API_Equi.h"

@interface TodayViewController () <NCWidgetProviding>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) ListDataSourceDelegate *managerTableView;

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.managerTableView = [ListDataSourceDelegate new];
    
    self.tableView.dataSource = self.managerTableView;
    self.tableView.delegate = self.managerTableView;
    
    [self getPosts];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    completionHandler(NCUpdateResultNewData);
}

- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets {
    return UIEdgeInsetsMake(10, 0, 10, 10);
}

#pragma mark - Networking

- (void) getPosts {
    
    [API_Equi getPosts:^(NSArray *list) {
        
        self.managerTableView.listItens = list;
        [self.tableView reloadData];
        
    } errorBlock:^(NSString *stringError) {
        
        NSLog(@"[Error Retorno] - %@", stringError);
        
    }];
    
}

@end
