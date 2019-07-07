//
//  ViewController.m
//  Test2
//
//  Created by 董金亮 on 14-10-13.
//  Copyright (c) 2014年 董金亮. All rights reserved.
//

#import "ViewController.h"
#import "T2ViewController.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController
//-(id)init{
//    if(self = [super init]){
//        
//    }
//    return self;
//}
- (void)viewDidLoad {
    NSLog(@"helloworld");
     NSLog(@"test1");
    NSLog(@"test2");
    NSLog(@"test3");
    [super viewDidLoad];
    [self watch];
    [self simpleMethod
     ];
}


// - (UIViewController*)viewController {
//    for (UIView* next = [self superview]; next; next =
//         next.superview) {
//        UIResponder* nextResponder = [next nextResponder];
//        if ([nextResponder isKindOfClass:[UIViewController
//                                         class]]) {
//            return (UIViewController*)nextResponder;
//        }
//    }
//    return nil;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)p1:(id)sender{
    T2ViewController* t2 = [[T2ViewController alloc] init];
    [t2.view setNeedsDisplay];
    [self.view addSubview:t2.view];
}
-(void)watch{
    NSString *className = NSStringFromClass([UIView class]);


    const char *cClassName = [className UTF8String];

    id theClass = objc_getClass(cClassName);

    unsigned int outCount;


    Method *m =  class_copyMethodList(theClass,&outCount);

    NSLog(@"%d",outCount);
    for (int i = 0; i<outCount; i++) {
        SEL a = method_getName(*(m+i));
        NSString *sn = NSStringFromSelector(a);
        NSLog(@"%@",sn);
    }
}

- (void) simpleMethod{
    
    NSMutableArray *array = [[NSMutableArray alloc]
                             initWithObjects:@"5",
                             @"8" ,@"2",@"6",@"34",@"12",nil];
    [array sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        if ([obj1 integerValue] < [obj2 integerValue]) {
            return (NSComparisonResult)NSOrderedAscending;
        }
           if ([obj1 integerValue] > [obj2 integerValue]) {
            return (NSComparisonResult)NSOrderedDescending;
        }
        
//        if ([obj1 integerValue] < [obj2 integerValue]) {
//            return (NSComparisonResult)NSOrderedAscending;
//        }
        return (NSComparisonResult)NSOrderedSame;
        //return NSOrderedDescending;
    }];
    
    NSLog(@"dsv");
    
    
    NSMutableArray * array1 = [NSMutableArray arrayWithObjects:@"ad",@"az",@"ac",@"ab",@"aa", nil];
    
    
    
    [array1 sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        return [obj1 localizedStandardCompare:obj2];
        
    }];
    
    NSLog(@"ar :: %@",array1);

    
}
@end
