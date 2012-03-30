//
//  BzoViewController.m
//  Bizarro
//
//  Created by Timothy Webster on 3/30/12.
//  MIT Licensed. Have Fun.
//

#import "BzoViewController.h"

@interface BzoViewController ()

@end

@implementation BzoViewController
@synthesize myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"www/index" ofType:@"html"]isDirectory:NO]]];

}

- (void)viewDidUnload
{
    [self setMyWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
