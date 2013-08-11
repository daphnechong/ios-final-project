//
//  Mi9ViewController.h
//  FinalProject
//
//  Created by Daphne Chong on 4/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//
#import <UIKit/UIKit.h>


@interface Mi9ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction) loadBarInformation:(id)sender;
@end
