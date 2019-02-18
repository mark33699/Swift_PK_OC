//
//  OCViewController.m
//  SwiftPkOc
//
//  Created by Admin on 2019/2/18.
//  Copyright © 2019年 Admin. All rights reserved.
//

#import "OCViewController.h"

@interface OCViewController ()
@property (nonatomic, strong) NSString *str;
@end

@implementation OCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //pk.001_巢狀多行註解[OC]
    /*
    // Do any additional setup after loading the view.
     */
    
    //pk.002_let與immutable的差異[OC]
//    self.str = @"我是一個字串";
//    self.str = @"我是另一個字串";
    
    //pk.003_整數跟小數不能相加[OC]
//    NSInteger intOC = 3 + 1.1;
    
    //pk.004_關於if[OC]
//    1. 條件可以不用加小括號
//    2. 條件一定要Bool值
//    3. 執行區塊就算只有一行也要花括號
//    4. 比較字串是否相等用==就可以了, isEqual是===
//    5. 不能用怪招只跑else
    
    //    NSString *string;
    NSString *string = @"ABCD";
//    if (0)
//    if (1)
    if([string isEqual:@"ABCD"])
        NSLog(@"OC條件為真");
//        NSLog(@"OC條件為真是真的");
    else
        NSLog(@"OC條件為假");
    
    {
        NSLog(@"OC條件為假");
    }
}


@end
