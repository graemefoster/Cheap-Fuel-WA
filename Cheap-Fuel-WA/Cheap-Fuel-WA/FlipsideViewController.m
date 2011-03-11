//
//  FlipsideViewController.m
//  Cheap-Fuel-WA
//
//  Created by Graeme Foster on 11/03/11.
//  Copyright 2011 GraemeCorp. All rights reserved.
//

#import "FlipsideViewController.h"


@implementation FlipsideViewController
@synthesize settingsTable = _settingsTable;

@synthesize delegate=_delegate;

- (void)dealloc
{
    [_settingsTable release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];  
}

- (void)viewDidUnload
{
    [self setSettingsTable:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Defaults";
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TEST"];   
    
    cell.textLabel.text = @"Home";
    cell.detailTextLabel.text = @"Carlisle";
    
        return [cell autorelease];
    }
    
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TEST"];   
    
    cell.textLabel.text = @"Fuel";
    cell.detailTextLabel.text = @"Unleaded";
    
    return [cell autorelease];
}


#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
