//
//  SettingsViewController.m
//  SlideViewController
//
//  Created by Andrew Carter on 12/18/11.
//  Mod by JustVanBlooM on 4/23/13

#import "SettingsViewController.h"

@implementation SettingsViewController

- (void)loadView {
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 460.0f)];
    view.backgroundColor = [UIColor whiteColor];
    
    self.view = [view autorelease];
    
}

- (void)viewDidLoad {
    
    self.navigationItem.title = @"Settings";
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, 300.f, 460.0f)];
    label.numberOfLines = 0;
    label.textAlignment = UITextAlignmentCenter;
    label.text = @"This UIViewController was loaded without a nib";
    [self.view addSubview:label];
    [label release];
    
}

@end
