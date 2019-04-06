//
//  ViewController.h
//  fanTest
//
//  Created by Izzy Machado on 3/31/19.
//  Copyright © 2019 Ismael J. Machado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBAudienceNetwork/FBAudienceNetwork.h"


@interface ViewController : UIViewController <FBAdViewDelegate>

@property(nonatomic, strong) FBAdView *fanAdView;

@end

