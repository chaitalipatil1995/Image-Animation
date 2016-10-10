//
//  ViewController.h
//  CPImageAnimation
//
//  Created by Student P_05 on 10/10/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *ball;

- (IBAction)directionAction:(id)sender;
- (IBAction)zoomInAction:(id)sender;
- (IBAction)zoomOutAction:(id)sender;

@end

