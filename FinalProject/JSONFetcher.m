//
//  JSONFetcher.m
//  ButtonTime
//
//  Created by Daphne Chong on 23/07/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import "JSONFetcher.h"

@implementation JSONFetcher

+ (void) fetchFromURL:(NSURLRequest *)request with:(COMPLETION_BLOCK)completion {
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        id serialized = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            completion(response, serialized, error);
        }];
    }];

}


@end
