//
//  T1ViewController.m
//  Test2
//
//  Created by 董金亮 on 14-10-13.
//  Copyright (c) 2014年 董金亮. All rights reserved.
//

#import "T1ViewController.h"

@interface T1ViewController ()

@end

@implementation T1ViewController

-(id)init{
    if(self = [super init]){
        
    }
    return self;
}

-(void) awakeFromNib{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setNeedsDisplay];
//    UIView* v1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 600, 44)];
//    [v1 setBackgroundColor:[UIColor blueColor]];
//    //[self.view addSubview:v1];
//    
//    UILabel* lab = [[UILabel alloc] init];
//    [lab setText:@"fff"];
//    [lab setTextColor:[UIColor blueColor]];
//    [lab setFrame:CGRectMake(0, 80, 60, 30)];
//    [self.view addSubview:lab];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
