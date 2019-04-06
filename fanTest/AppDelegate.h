//
//  AppDelegate.h
//  fanTest
//
//  Created by Izzy Machado on 3/31/19.
//  Copyright © 2019 Ismael J. Machado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

