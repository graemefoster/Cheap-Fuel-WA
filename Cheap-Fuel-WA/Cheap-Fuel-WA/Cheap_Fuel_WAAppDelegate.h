//
//  Cheap_Fuel_WAAppDelegate.h
//  Cheap-Fuel-WA
//
//  Created by Graeme Foster on 11/03/11.
//  Copyright 2011 GraemeCorp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface Cheap_Fuel_WAAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;

@end
