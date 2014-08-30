//
//  OSPViewController.h
//  Playground
//
//  Created by Oliver Staton on 8/2/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OSPViewController : UIViewController
{
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *ageLabel;
    IBOutlet UILabel *breedLabel;
}

@property (nonatomic, strong) NSMutableArray *myDogs;

- (IBAction)NewDogBarButtonItemsPressed:(id)sender;

@end
