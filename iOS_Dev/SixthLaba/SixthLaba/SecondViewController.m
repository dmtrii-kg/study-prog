//
//  SecondViewController.m
//  SixthLaba
//
//  Created by dmtrii on 05.12.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (nonatomic, assign) int size;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.size = 0;
    self.worldArray = [[NSMutableArray alloc] init];
    
}

- (IBAction)addWorld:(UIButton *)sender {
    NSString *input = _textField.text;
    [_worldArray insertObject:input atIndex: _size];
    NSLog(@"Array: %@", _worldArray);
    NSString * result = [[_worldArray valueForKey:@"description"] componentsJoinedByString:@", "];
    _label1.text = result;
    _size++;
}

- (IBAction)removeWorld:(id)sender {
    [_worldArray removeLastObject];
    NSLog(@"Array: %@", _worldArray);
    NSString * result = [[_worldArray valueForKey:@"description"] componentsJoinedByString:@", "];
    _label1.text = result;
    if (_size > 0)
        _size--;
}


@end
