//
//  SecondVC.h
//  HeroesParse
//
//  Created by Hickman on 10/26/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondVC : UIViewController

@property (strong, nonatomic) UIImage *imageOfHero;
@property (strong, nonatomic) NSString *powerOfHero;

@property (weak, nonatomic) IBOutlet UIImageView *backGroundImage;

@property (weak, nonatomic) IBOutlet UILabel *label;

@end
