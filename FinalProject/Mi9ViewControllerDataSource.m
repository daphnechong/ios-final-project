//
//  Mi9ViewControllerDelegate.m
//  FinalProject
//
//  Created by Daphne Chong on 11/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "Mi9ViewControllerDataSource.h"
#import "Mi9BarUITableViewCell.h"

@implementation Mi9ViewControllerDataSource
@synthesize bars;

- (void) setBarInformation:(NSArray *)barArray
{
    self.bars = barArray;
    
    //todo: create bar details objects 
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.bars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Bar Cells";
    
    Mi9BarUITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell)
    {
        // i never get here for some reason?
        cell = [[Mi9BarUITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    
    [cell setBarDetails:[[Mi9BarDetails alloc] initWithDictionary:self.bars[indexPath.row]]];
//  cell.textLabel.text = [NSString stringWithFormat:@"%@", self.bars[indexPath.row][@"name"]];
//  cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", self.bars[indexPath.row][@"location"]];
    return cell;
}
@end
