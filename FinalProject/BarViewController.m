//
//  BarViewController.m
//  FinalProject
//
//  Created by Daphne Chong on 4/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "BarViewController.h"

@interface BarViewController ()

@end

@implementation BarViewController

@synthesize barDetails;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (id)initWithNibName:(NSString *)nibNameOrNil usingBar:(Mi9BarDetails *)details bundle:(NSBundle *)nibBundleOrNil
{
    self = [self initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.barDetails = details;
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.BarNameLabel.text = barDetails.barName;
    self.SummaryLabel.text = barDetails.summary;
    self.RatingLabel.text = barDetails.rating.description;
    self.LocationLabel.text = barDetails.location;
    self.AddedByLabel.text = barDetails.addedBy;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
