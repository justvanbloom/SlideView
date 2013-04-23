//
//  MySlideViewController.h
//  SlideViewController
//
//  Created by Andrew Carter on 12/18/11.
//  Mod by JustVanBlooM on 4/23/13


#import "SlideViewController.h"

@interface MySlideViewController : SlideViewController <SlideViewControllerDelegate> {
    
    NSArray *_datasource;
    NSMutableArray *_searchDatasource;
    
}

@property (nonatomic, readonly) NSArray *datasource;

@end
