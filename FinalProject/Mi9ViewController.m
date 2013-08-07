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


@interface Mi9ViewController ()

@property (nonatomic) NSArray *bars;

@end

@implementation Mi9ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self loadBarInformation:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) loadBarInformation:(id)sender{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://ios-codeschool.bilue.com.au/samples/bars.json"]];
    
    [JSONFetcher fetchFromURL:request with:^(NSURLResponse *response, NSArray *jsonData, NSError *error) {
        self.bars = jsonData;
        [self.tableView reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.bars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Bar Cells";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", _bars[indexPath.row][@"name"]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", _bars[indexPath.row][@"location"]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BarViewController *controller = [[BarViewController alloc] initWithNibName:@"BarViewController" bundle:nil];
    
    NSDictionary *barInfo = self.bars[indexPath.row];

    controller.addedBy = barInfo[@"creator"][@"name"];
    controller.location = barInfo[@"location"];
    controller.summary = barInfo[@"summary"];
    controller.rating =  barInfo[@"rating"];
    controller.barName = barInfo[@"name"];
    

    [self.navigationController pushViewController:controller animated:YES];
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
