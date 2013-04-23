//
//  FriendViewController.m
//  SlideViewController
//
//  Created by Andrew Carter on 12/18/11.
//  Mod by JustVanBlooM on 4/23/13


#import "FriendViewController.h"

#import "FriendDetailsViewController.h"

@implementation FriendViewController

@synthesize name = _name;
@synthesize age = _age;

- (void)dealloc {
    
    [_name release];
    [_age release];
    
    [super dealloc];
    
}

- (void)viewDidLoad {
    
    _nameLabel.text = self.name;
    _ageLabel.text = self.age;
    
}

- (void)viewWillAppear:(BOOL)animated {    
    
} 

- (IBAction)detailsButtonPressed:(id)sender {
    
    FriendDetailsViewController *friendDetailsViewController = [[FriendDetailsViewController alloc] initWithNibName:@"FriendDetailsViewController" bundle:nil];
    [self.navigationController pushViewController:friendDetailsViewController animated:YES];
    [friendDetailsViewController release];
    
}

@end
