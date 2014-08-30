//
//  OSPViewController.m
//  Playground
//
//  Created by Oliver Staton on 8/2/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import "OSPViewController.h"
#import "OSPDog.h"

@interface OSPViewController ()

@end

@implementation OSPViewController

- (IBAction)NewDogBarButtonItemsPressed:(id)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() %numberOfDogs;
    OSPDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
    nameLabel.text = randomDog.name;
    ageLabel.text = [NSString stringWithFormat:@"%i", randomDog.age];
    breedLabel.text = randomDog.breed;
}

- (void)MakeSomeDogs
{
    OSPDog *firstDog = [[OSPDog alloc] init];
    firstDog.age = 2;
    firstDog.name = @"Juno";
    firstDog.breed = @"Black Lab";

    OSPDog *secondDog = [[OSPDog alloc] init];
    secondDog.age = 5;
    secondDog.name = @"Shep";
    secondDog.breed = @"German Shepard";

    OSPDog *thirdDog = [[OSPDog alloc] init];
    thirdDog.age = 10;
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:firstDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    
    NSLog(@"%@", self.myDogs);
}

- (void)viewDidLoad
{
    [self MakeSomeDogs];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
