//
//  BzoPlugin.m
//  Bizarro
//
//  Created by Timothy Webster on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BzoPlugin.h"

@implementation BzoPlugin

@synthesize webView;

+ (id)getInstance {
    return [[BzoPlugin alloc] init];
}

#define JS_TEMPLATE @"myCallback('%@')"
- (NSString *)callDoUpdate:(NSString *)string {
    NSString *jsExp = [[NSString alloc] initWithFormat:JS_TEMPLATE, string];   
    return [webView stringByEvaluatingJavaScriptFromString:jsExp]; 
}

- (BOOL) openURL:(NSURL *)url {
    [self callDoUpdate:[url description]];
    return YES;
}

@end
