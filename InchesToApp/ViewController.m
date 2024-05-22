//
//  ViewController.m
//  InchesToApp
//
//  Created by Mert Özcan on 17.05.2024.
//

#import "ViewController.h"

double convertInchesToFeet(double inches) {
    double feet;
    feet = inches / 12;
    return feet;
}

double convertInchesToMeters(double inches) {
    double meters;
    meters = inches * 0.0254;
    return meters;
}

double convertInchesToMiles(double inches) {
    double miles;
    miles = inches / 63360;
    return miles;
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    if (self.segmentController.selectedSegmentIndex == 0) {
        double feet = convertInchesToFeet(userInput);
        [buf appendString: [@(feet) stringValue]];
    } else if (self.segmentController.selectedSegmentIndex == 1){
        double meters = convertInchesToMeters(userInput);
        [buf appendString: [@(meters) stringValue]];
    } else {
        double miles = convertInchesToMiles(userInput);
        [buf appendString: [@(miles) stringValue]];
    }
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
