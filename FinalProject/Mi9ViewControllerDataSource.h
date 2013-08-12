//
//  Mi9ViewControllerDelegate.h
//  FinalProject
//
//  Created by Daphne Chong on 11/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mi9ViewControllerDataSource : NSObject <UITableViewDataSource>

@property NSArray *bars;

- (void) setBarInformation:(NSArray *)barInfo;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;


@end
