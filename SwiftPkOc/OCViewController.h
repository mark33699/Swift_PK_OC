//
//  OCViewController.h
//  SwiftPkOc
//
//  Created by Admin on 2019/2/18.
//  Copyright © 2019年 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

//pk.011_關於POP[OC]
//1.OC的procotol只是對外辨識用, 對內自動完成, 沒有強制效力  
@protocol GoodPeople <NSObject>
-(void)love;
@end

NS_ASSUME_NONNULL_BEGIN
@interface OCViewController : UIViewController <GoodPeople,UITableViewDataSource>
@end
NS_ASSUME_NONNULL_END
