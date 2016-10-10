//
//  ViewController.m
//  CPImageAnimation
//
//  Created by Student P_05 on 10/10/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)animatedUp{
    
    [UIView animateWithDuration:0.5 delay:0.0
                        options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
    } completion:^(BOOL finished) {
    if (finished) {
        NSLog(@"Up Animation Finished");
    }
}];
}

-(void)animatedDown{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
        NSLog(@"Down Animation Finished");
    }
}];
}

-(void)animatedRight{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        } completion:^(BOOL finished) {
    if (finished) {
        NSLog(@"Right Animation Finished");
    }
}];
}

-(void)animatedLeft{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
    } completion:^(BOOL finished) {
    if (finished) {
                    NSLog(@"left Animation Finished");
                }
    }];
}


-(void)animatedNorthwest{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            
        NSLog(@"northWest Animation Finished");
        }
    }];
}

-(void)animatedSouthWest{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x - 100, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
    } completion:^(BOOL finished) {
    if (finished) {
                    NSLog(@"southWest Animation Finished");
                }
        }];
}

-(void)animatedNorthEast{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
                    NSLog(@"northEast Animation Finished");
                }
        }];
}

-(void)animatedSouthEast{
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
                        NSLog(@"southEast Animation Finished");
            }
    }];
}



- (IBAction)directionAction:(id)sender {
    
    UIButton *button = sender;
    
    if (button.tag == 101) {
        [self animatedUp];
    }
    else if (button.tag == 106){
        [self animatedDown];
    }
    else if (button.tag == 103){
        [self animatedLeft];
    }
    else if (button.tag == 104){
        [self animatedRight];
    }
    else if (button.tag == 100){
        [self animatedNorthwest];
    }
    else if (button.tag == 107){
        [self animatedSouthEast];
    }
    else if (button.tag == 105){
        [self animatedSouthWest];
    }
    else if (button.tag == 102){
        [self animatedNorthEast];
    }
    
}



-(void)animateZoomWithScale:(CGFloat) scale{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.ball.transform = CGAffineTransformMakeScale(scale, scale);
    } completion:^(BOOL finished) {
        if(finished){
            NSLog(@"zoom animated");
        }
    }];
}

-(void)animateWithSize:(CGFloat) size{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
     
     [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y, self.ball.frame.size.width + size, self.ball.frame.size.height + size)];
    }
                     completion:^(BOOL finished) {
                         
                         if (finished) {
                             NSLog(@"zoom animated");
                         }
        }];
}




- (IBAction)zoomInAction:(id)sender {
    
    [self animateZoomWithScale:2];
    
}

- (IBAction)zoomOutAction:(id)sender {
    
    [self animateZoomWithScale:0.5];
    
}









@end
