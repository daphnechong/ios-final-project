//
//  BarViewController.m
//  FinalProject
//
//  Created by Daphne Chong on 4/08/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "BarViewController.h"
#import <SDWebImage/SDWebImageManager.h>

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
 
    SDWebImageManager *manager = [SDWebImageManager sharedManager];
    [manager downloadWithURL:[NSURL URLWithString:barDetails.imageUrl] options:0 progress:^(NSUInteger receivedSize, long long expectedSize)
    {
         // progression tracking code
    }
    completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL option)
    {
         if (image)
         {
             self.imageView.image = image;
         }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
