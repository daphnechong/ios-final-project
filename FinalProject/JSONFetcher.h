//
//  JSONFetcher.h
//  ButtonTime
//
//  Created by Daphne Chong on 23/07/13.
//  Copyright (c) 2013 Daphne Chong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^COMPLETION_BLOCK) (NSURLResponse *response, id jsonData, NSError *error);

@interface JSONFetcher : NSObject

+ (void) fetchFromURL:(NSURLRequest *)request with:(COMPLETION_BLOCK)block;
@end
