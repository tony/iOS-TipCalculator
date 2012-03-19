//
//  MGViewController.m
//  TipCalculator
//
//  Created by blah blah on 3/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MGViewController.h"

@interface MGViewController ()

@end

@implementation MGViewController
@synthesize tipPercentageLabel;
@synthesize mealDamage;
@synthesize tipAmountSlida;
@synthesize tipAmountLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [tipAmountLabel setText:@"Enter your total bill and use the slider"];
}

- (void)viewDidUnload
{
    [self setTipAmountLabel:nil];
    [self setMealDamage:nil];
    [self setTipPercentageLabel:nil];
    [self setTipPercentageLabel:nil];
    [self setTipAmountSlida:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)buttonPunched:(id)sender {
    /*
    NSString *damageInput;

    damageInput = [mealDamage text];

    [label setText:@"I like shamoos"];
     */
    
    /*
    [label setText:[mealDamage text]];
     */
    
    /*
    NSString *tonyString = [[NSString alloc] initWithString:@"Hey yo"];
    [label setText:tonyString];
    */
    
    /*
    NSString *powerString = [[NSString alloc] initWithFormat:[mealDamage text]];
    [label setText:powerString];
     */
    
    /*
    NSString *powerString = [[NSString alloc] initWithFormat:@"here: %@",[mealDamage text]];
    [label setText:powerString];
    */
    
    /* float billAmount = [[mealDamage text] floatValue];
    float tipAmount = [tipAmountSlida value] * billAmount;

    NSString *tipPercentageString = [[NSString alloc] initWithFormat:@"%1.0f%%", [tipAmountSlida value] * 100];
    NSString *tipString = [[NSString alloc] initWithFormat:@"$%1.2f", tipAmount];
    [label setText:tipString];
    [tipPercentageLabel setText:tipPercentageString];
     */
}

- (IBAction)movedDaSunDial:(id)sender {
    if (([mealDamage text] == nil) || ([mealDamage.text isEqualToString:@""])) {
        [tipAmountLabel setText:@"Enter your total bill above"];

        mealDamage.backgroundColor = [UIColor redColor];  
    } else {
        float billAmount = [[mealDamage text] floatValue];
        float tipAmount = [tipAmountSlida value] * billAmount;
        NSString *tipPercentageString = [[NSString alloc]initWithFormat:@"%1.0f%%", [tipAmountSlida value] * 100];
            NSString *tipString = [[NSString alloc] initWithFormat:@"$%1.2f", tipAmount];
        [tipAmountLabel setText:tipString];
        [tipPercentageLabel setText:tipPercentageString];
        //mealDamage.backgroundColor = [UIColor clearColor];
    }
}

- (IBAction)mealDamageTouched:(id)sender {
    mealDamage.backgroundColor = [UIColor whiteColor];
}

@end
