//
//  MGViewController.h
//  TipCalculator
//
//  Created by blah blah on 3/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MGViewController : UIViewController
    @property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
    @property (weak, nonatomic) IBOutlet UILabel *tipPercentageLabel;
    @property (weak, nonatomic) IBOutlet UITextField *mealDamage;
    @property (weak, nonatomic) IBOutlet UISlider *tipAmountSlida;

    - (IBAction)movedDaSunDial:(id)sender;
    - (IBAction)buttonPunched:(id)sender;
    - (IBAction)mealDamageTouched:(id)sender;

@end
