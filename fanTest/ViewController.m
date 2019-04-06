//
//  ViewController.m
//  fanTest
//
//  Created by Izzy Machado on 3/31/19.
//  Copyright © 2019 Ismael J. Machado. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.fanAdView = [[FBAdView alloc] initWithPlacementID:@"YOUR_PLACEMENT_ID" adSize:kFBAdSizeHeight50Banner rootViewController:self];
    self.fanAdView.delegate = self;
    [self.fanAdView loadAd];
    
}

- (void)adViewDidLoad:(FBAdView *)adView
{
    
    if([adView superview] == nil) {
        
        [self.view addSubview:adView];
        
        if (@available(iOS 11.0, *)) {
            UIWindow *window = UIApplication.sharedApplication.keyWindow;
            CGFloat topPadding = window.safeAreaInsets.top;
            adView.frame = CGRectMake(0, 0 + topPadding, adView.frame.size.width, adView.frame.size.height);
           
        }
        
    }
    
}


- (void)adView:(FBAdView *)adView didFailWithError:(NSError *)error
{
 
}


@end
