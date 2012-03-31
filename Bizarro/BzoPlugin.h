//
//  BzoPlugin.h
//  Bizarro
//
//  Created by Timothy Webster on 3/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BzoPlugin : NSObject

@property (weak) UIWebView *webView;

+ (id)getInstance;
- (BOOL) openURL:(NSURL *)url;

@end
