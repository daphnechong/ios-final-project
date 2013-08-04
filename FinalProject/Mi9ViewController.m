//
//  Mi9ViewController.m
//  FinalProject
//
//  Created by Daphne Chong on 4/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "Mi9ViewController.h"
#import "JSONFetcher.h"

@interface Mi9ViewController ()

@end

@implementation Mi9ViewController
{
    COMPLETION_BLOCK _completionBlock;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (COMPLETION_BLOCK) completionBlock
{
    if (!_completionBlock)
    {
        COMPLETION_BLOCK block = ^(NSURLResponse *response, NSArray *jsonData, NSError *error){
            //jsonData.description;
        };
        _completionBlock = block;
    }
    return _completionBlock;
}

- (IBAction) loadBarInformation:(id)sender{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://ios-codeschool.bilue.com.au/samples/bars.json"]];
    
    [JSONFetcher fetchFromURL:request with:[self completionBlock]];
}


@end
