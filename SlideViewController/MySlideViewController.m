//
//  MySlideViewController.m
//  SlideViewController
//
//  Created by Andrew Carter on 12/18/11.
//  Mod by JustVanBlooM on 4/23/13


#import "MySlideViewController.h"

#import "HomeViewController.h"
#import "FriendViewController.h"
#import "SettingsViewController.h"

@implementation MySlideViewController

@synthesize datasource = _datasource;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        //creating _searchDatasource for later use!
        _searchDatasource = [NSMutableArray new];
        
        NSMutableArray *datasource = [NSMutableArray array];
        
        /*
        Here's the fun part. What we need to do is creat a datasource array that uses this structure
         
         <Array>
            <Dictionary><!--represents a section in the table-->
                
                <!--This will be displayed as the text in section header. You could also use kSlideViewControllerSectionTitleNoTitle for the value-->
                <key>kSlideViewControllerSectionTitleKey</key>
                <value>My Section Header Text</value>
            
                <!--This will be the rows of that section.-->
                <key>kSlideViewControllerSectionViewControllersKey</key>
                <value>
                    <Array>
         
                        <Dictionary>
         
                            <!--this will be the title for the row-->
                            <key>kSlideViewControllerViewControllerTitleKey</key>
                            <value>My Text</value>
         
                            <!--This is the view controller class that should be created / displayed when this row is clicked-->
                            <key>kSlideViewControllerViewControllerClassKey</key>
                            <value>[MyViewControllerSubclass class]</value>
                            
                            <!--If you're using nibs, include the nib name in this key-->
                            <key>kSlideViewControllerViewControllerNibNameKey</key>
                            <value>MyViewControllerSubclass</value>
                            
                            <!--Include a UIImage with this key to have an icon for the row -->
                            <key>kSlideViewControllerViewControllerIconKey</key>
                            <value>*UIImage*</value>
         
                            <!--This gets passed along with the configureViewController:userInfo: method if you implement it-->
                            <key>kSlideViewControllerViewControllerUserInfoKey</key>
                            <value>anything you want</value>
         
                        </Dictionary>
         
                    </Array>
                </value>
         
            </Dictionary><!--end table section-->
         </Array>
        
         
         */
        NSMutableDictionary *sectionOne = [NSMutableDictionary dictionary];
        [sectionOne setObject:kSlideViewControllerSectionTitleNoTitle forKey:kSlideViewControllerSectionTitleKey];
        
        NSMutableDictionary *homeViewControllerDictionary = [NSMutableDictionary dictionary];
        [homeViewControllerDictionary setObject:@"Home" forKey:kSlideViewControllerViewControllerTitleKey];
        [homeViewControllerDictionary setObject:@"HomeViewController" forKey:kSlideViewControllerViewControllerNibNameKey];
        [homeViewControllerDictionary setObject:[HomeViewController class] forKey:kSlideViewControllerViewControllerClassKey];
        
        [sectionOne setObject:[NSArray arrayWithObject:homeViewControllerDictionary] forKey:kSlideViewControllerSectionViewControllersKey];
        
        [datasource addObject:sectionOne];
        
        NSMutableDictionary *sectionTwo = [NSMutableDictionary dictionary];
        [sectionTwo setObject:@"Friends" forKey:kSlideViewControllerSectionTitleKey];

        NSMutableDictionary *friendViewControllerOneDictionary = [NSMutableDictionary dictionary];
        [friendViewControllerOneDictionary setObject:@"Andrew" forKey:kSlideViewControllerViewControllerTitleKey];
        [friendViewControllerOneDictionary setObject:[FriendViewController class] forKey:kSlideViewControllerViewControllerClassKey];
        [friendViewControllerOneDictionary setObject:@"FriendViewController" forKey:kSlideViewControllerViewControllerNibNameKey];
        [friendViewControllerOneDictionary setObject:[UIImage imageNamed:@"andrew.jpeg"] forKey:kSlideViewControllerViewControllerIconKey];
        NSMutableDictionary *friendOneUserInfo = [NSMutableDictionary dictionary];
        [friendOneUserInfo setObject:@"Andrew" forKey:@"name"];
        [friendOneUserInfo setObject:@"24" forKey:@"age"];
        [friendViewControllerOneDictionary setObject:friendOneUserInfo forKey:kSlideViewControllerViewControllerUserInfoKey];
        
        NSMutableDictionary *friendViewControllerTwoDictionary = [NSMutableDictionary dictionary];
        [friendViewControllerTwoDictionary setObject:@"Leigh Anne" forKey:kSlideViewControllerViewControllerTitleKey];
        [friendViewControllerTwoDictionary setObject:[FriendViewController class] forKey:kSlideViewControllerViewControllerClassKey];
        [friendViewControllerTwoDictionary setObject:@"FriendViewController" forKey:kSlideViewControllerViewControllerNibNameKey];
        [friendViewControllerTwoDictionary setObject:[UIImage imageNamed:@"leighanne.jpg"] forKey:kSlideViewControllerViewControllerIconKey];
        NSMutableDictionary *friendTwoUserInfo = [NSMutableDictionary dictionary];
        [friendTwoUserInfo setObject:@"Leigh Anne" forKey:@"name"];
        [friendTwoUserInfo setObject:@"27" forKey:@"age"];
        [friendViewControllerTwoDictionary setObject:friendTwoUserInfo forKey:kSlideViewControllerViewControllerUserInfoKey];
        
        NSMutableDictionary *friendViewControllerThreeDictionary = [NSMutableDictionary dictionary];
        [friendViewControllerThreeDictionary setObject:@"Blake" forKey:kSlideViewControllerViewControllerTitleKey];
        [friendViewControllerThreeDictionary setObject:[FriendViewController class] forKey:kSlideViewControllerViewControllerClassKey];
        [friendViewControllerThreeDictionary setObject:@"FriendViewController" forKey:kSlideViewControllerViewControllerNibNameKey];
        [friendViewControllerThreeDictionary setObject:[UIImage imageNamed:@"bsirach.jpg"] forKey:kSlideViewControllerViewControllerIconKey];
        NSMutableDictionary *friendThreeUserInfo = [NSMutableDictionary dictionary];
        [friendThreeUserInfo setObject:@"Blake" forKey:@"name"];
        [friendThreeUserInfo setObject:@"24" forKey:@"age"];
        [friendViewControllerThreeDictionary setObject:friendThreeUserInfo forKey:kSlideViewControllerViewControllerUserInfoKey];
        
        [sectionTwo setObject:[NSArray arrayWithObjects:friendViewControllerOneDictionary, friendViewControllerTwoDictionary, friendViewControllerThreeDictionary, nil] forKey:kSlideViewControllerSectionViewControllersKey];
        
        [datasource addObject:sectionTwo];
        
        NSMutableDictionary *sectionThree = [NSMutableDictionary dictionary];
        [sectionThree setObject:@"" forKey:kSlideViewControllerSectionTitleKey];
        
        NSMutableDictionary *settingsViewControllerDictionary = [NSMutableDictionary  dictionary];
        [settingsViewControllerDictionary setObject:@"Settings" forKey:kSlideViewControllerViewControllerTitleKey];
        [settingsViewControllerDictionary setObject:[SettingsViewController class] forKey:kSlideViewControllerViewControllerClassKey];
        
        [sectionThree setObject:[NSArray arrayWithObject:settingsViewControllerDictionary] forKey:kSlideViewControllerSectionViewControllersKey];
        
        [datasource addObject:sectionThree];
        
        _datasource = [datasource retain];
        
    }
    
    return self;
}

- (void)dealloc {
    
    [_datasource release];
    [_searchDatasource release];
    
    [super dealloc];
    
}

- (UIViewController *)initialViewController {
    
    HomeViewController *homeViewController = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    
    return [homeViewController autorelease];
    
}

- (NSIndexPath *)initialSelectedIndexPath {
    
    return [NSIndexPath indexPathForRow:0 inSection:0];
    
}

- (void)configureViewController:(UIViewController *)viewController userInfo:(id)userInfo {
    
    if ([viewController isKindOfClass:[FriendViewController class]]) {
        
        NSDictionary *info = (NSDictionary *)userInfo;
        FriendViewController *friendViewController = (FriendViewController *)viewController;
        friendViewController.name = [info objectForKey:@"name"];
        friendViewController.age = [info objectForKey:@"age"];
        friendViewController.navigationItem.title = [info objectForKey:@"name"];
        
    }
    
}

- (void)configureSearchDatasourceWithString:(NSString *)string {

    NSArray *searchableControllers = [[[self datasource] objectAtIndex:1] objectForKey:kSlideViewControllerSectionViewControllersKey];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"slideViewControllerViewControllerTitle CONTAINS[cd] %@", string];
    [_searchDatasource setArray:[searchableControllers filteredArrayUsingPredicate:predicate]];
    
}

- (NSArray *)searchDatasource  {
    
    return _searchDatasource;
}


@end
