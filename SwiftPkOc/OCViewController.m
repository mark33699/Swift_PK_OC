//
//  OCViewController.m
//  SwiftPkOc
//
//  Created by Admin on 2019/2/18.
//  Copyright © 2019年 Admin. All rights reserved.
//

#import "OCViewController.h"

typedef NS_ENUM(NSUInteger, SwitchCase)
{
    SwitchCaseA,
    SwitchCaseB,
    SwitchCaseC,
};

@interface OCViewController () 
@property (nonatomic, strong) NSString *str;
@end

@implementation OCViewController

//-(void)love
//{
//    NSLog(@"I ❤️ OC");
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //pk.001_巢狀多行註解[OC]
    /*
    // Do any additional setup after loading the view.
     */
    
    //pk.002_多行字串[OC]
//    NSString *strMuitlLine = @"白日依山盡\n黃河入海流\n欲窮千里目\n更上一層樓";
//    NSLog(@"%@",strMuitlLine);
    
    //pk.003_let與immutable的差異[OC]
//    self.str = @"我是一個字串";
//    self.str = @"我是另一個字串";
    
    //pk.004_整數跟小數不能相加[OC]
//    NSInteger intOC = 3 + 1.1;
    
    //pk.005_關於if[OC]
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
    
    //pk.006_關於Switch[OC]
//    1. case一定要窮舉, 不然就加default
//    2. 不用再加break了, 相反的, 要繼續就加fallthrough
//    3. 同時比較多個條件是用逗號分隔(不能換行)case a, b:
//    4. 任何型別都可比對(字串也可)
//    5. 為什麼case不往內縮.....
    SwitchCase caseType;
    caseType = SwitchCaseA;
    switch (caseType)
    {
        case SwitchCaseA:
        case SwitchCaseB:
            NSLog(@"我可能是OC的A");
            NSLog(@"我可能是OC的B");
            break;
        case SwitchCaseC:
            NSLog(@"我是OC的C");
            break;
    }
    
    //pk.007_關於function[OC]
//    1. 傳進來的參數如果是VT不可修改, 但如果是RT就會改到外面的
//    2. 預設一個參數名稱內外共用
//    3. 但是就算參數或回傳值型別不同也算不同function
//    4. 可以給預設值
//    5. 參數用逗號分隔
    
    NSNumber *number = @(1);
    [self ocMethodWith:number name:@""];
    NSLog(@"%@",number);
    
    //pk.008_do while改叫repeat while[OC]
//    do
//    {
//
//    } while ();
    
    //pk.009_關於Dictionary[Swift]
//    1. 簡寫改用方括號= =
//    2. 預設是不能用不同型別的元素, 除非用泛型(用逗號隔開= =)
    NSDictionary *dict = @{@"name":@"OC",@"age":@(18)};
    
    
    //-------------------------
    //前十題小結
    //-------------------------
    
    
}

-(void)ocMethodWith:(NSNumber*)aNumber name:(NSString*)strName
{
    aNumber = @([aNumber integerValue] + 1);
}

//over loading 不能用型別
//-(void)ocMethodWith:(NSUInteger)aNumber
//{
//    aNumber += 1;
//}

@end

