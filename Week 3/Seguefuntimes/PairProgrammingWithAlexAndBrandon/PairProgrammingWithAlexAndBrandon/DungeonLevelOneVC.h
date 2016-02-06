//
//  DungeonLevelOneVC.h
//  PairProgrammingWithAlexAndBrandon
//
//  Created by Tatiana Jamison on 10/15/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DungeonLevelOneVC : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) NSString *dataFromSender;
@property (nonatomic) int level;
@property (weak, nonatomic) IBOutlet UIButton *buttonDeeper;

@end
