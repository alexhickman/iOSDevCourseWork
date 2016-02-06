//
//  CustomTVCells.m
//  TableViewPrototypeXIB
//
//  Created by Hickman on 10/14/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

#import "CustomTVCells.h"

@implementation CustomTVCells

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)buttonPressed:(id)sender {
    NSLog(@"Button was pressed");
}

@end
