//
//  MainViewController.h
//  Cheap-Fuel-WA
//
//  Created by Graeme Foster on 11/03/11.
//  Copyright 2011 GraemeCorp. All rights reserved.
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate> {

}


- (IBAction)showInfo:(id)sender;

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end
