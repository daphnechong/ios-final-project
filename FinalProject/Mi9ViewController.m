//
//  Mi9ViewController.m
//  FinalProject
//
//  Created by Daphne Chong on 4/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "Mi9ViewController.h"
#import "BarViewController.h"
#import "JSONFetcher.h"
#import "Mi9ViewControllerDataSource.h"
#import "MBProgressHUD.h"


@interface Mi9ViewController ()

@property (nonatomic) Mi9ViewControllerDataSource *tableViewDataSource;

@end

@implementation Mi9ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.tableViewDataSource = [[Mi9ViewControllerDataSource alloc] init];
    self.tableView.dataSource = self.tableViewDataSource;
    [self loadBarInformation:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) loadBarInformation:(id)sender{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://ios-codeschool.bilue.com.au/samples/v2/bars.json"]];

    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [JSONFetcher fetchFromURL:request with:^(NSURLResponse *response, NSArray *jsonData, NSError *error) {
        [MBProgressHUD hideHUDForView:self.view animated:YES];

        [self.tableViewDataSource setBarInformation:jsonData];
        [self.tableView setDataSource:self.tableViewDataSource];
        [self.tableView reloadData];
    }];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Mi9BarDetails *barDetails = [[Mi9BarDetails alloc] initWithDictionary:self.tableViewDataSource.bars[indexPath.row]];
    BarViewController *controller = [[BarViewController alloc] initWithNibName:@"BarViewController" usingBar:barDetails bundle:nil];
    
    [self.navigationController pushViewController:controller animated:YES];
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
