//
//  BzoPluginExample.m
//  Bizarro
//
//  Created by Timothy Webster on 3/31/12.
//  MIT Licensed. Have Fun.
//

#import "BzoPluginExample.h"

@implementation BzoPluginExample

+ (id)getInstance {
    return [[BzoPluginExample alloc] init];
}

- (BOOL) openURL:(NSURL *)url {
    NSLog(@"I am quietly ignoring %@", [url description]);
    return YES;
}


@end
