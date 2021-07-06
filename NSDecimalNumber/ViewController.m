//
//  ViewController.m
//  NSDecimalNumber
//
//  Created by dida on 2021/7/6.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDecimalNumber *decimalNumber = [NSDecimalNumber decimalNumberWithString:@"10.219993"];
    NSDecimalNumberHandler *decimalHandler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:2 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    decimalNumber = [decimalNumber decimalNumberByRoundingAccordingToBehavior:decimalHandler];
    NSString *decimalString = [decimalNumber stringValue];
    NSLog(@"decimalString=%@",decimalString);
}


@end
