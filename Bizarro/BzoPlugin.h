//
//  BzoPlugin.h
//  Bizarro
//
//  Created by Timothy Webster on 3/31/12.
//  MIT Licensed. Have Fun.
//

#import <Foundation/Foundation.h>

@interface BzoPlugin : NSObject

@property (weak) UIWebView *webView;

+ (id)getInstance;
- (BOOL) openURL:(NSURL *)url;

@end
