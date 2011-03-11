//
//  FlipsideViewController.h
//  Cheap-Fuel-WA
//
//  Created by Graeme Foster on 11/03/11.
//  Copyright 2011 GraemeCorp. All rights reserved.
//  help!! can;t push as a stupid user interface file ALWAYS changes.
//

#import <UIKit/UIKit.h>

@protocol FlipsideViewControllerDelegate;

@interface FlipsideViewController : UIViewController <UITableViewDataSource> {

    UITableView *_settingsTable;
}

@property (nonatomic, assign) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;
@property (nonatomic, retain) IBOutlet UITableView *settingsTable;

@end


@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end
