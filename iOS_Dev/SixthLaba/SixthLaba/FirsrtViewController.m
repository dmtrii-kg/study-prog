//
//  FirsrtViewController.m
//  SixthLaba
//
//  Created by dmtrii on 05.12.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

#import "FirsrtViewController.h"

@interface FirsrtViewController ()

@property (weak, nonatomic) IBOutlet UILabel *counter;
@property (nonatomic, assign) int count;

@end

@implementation FirsrtViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.count = 0;
}

- (IBAction)addTapped:(UIButton *)sender {
    self.count++;
    printf("%d\n", _count);
    [_counter setText:[NSString stringWithFormat:@"%d", _count]];
}

- (IBAction)resetTapped:(UIButton *)sender {
    self.count = 0;
    printf("%d\n", _count);
    [_counter setText:[NSString stringWithFormat:@"%d", _count]];
}

@end
