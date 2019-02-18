//
//  SwiftViewController.swift
//  SwiftPkOc
//
//  Created by Admin on 2019/2/18.
//  Copyright © 2019年 Admin. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController
{
    let str = "我是一個字串"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //pk.001_巢狀多行註解[Swift]
        /*
         /*
         // Do any additional setup after loading the view, typically from a nib.
         */
         */
        
        //pk.002_let與immutable的差異[Swift]
//        str = "我是另一個字串"
        
        //pk.003_整數跟小數不能相加[Swift]
//        let int : Int = 3 + 1.1
        
        //pk.004_關於if[Swift]
//        1. 條件可以不用加小括號
//        2. 條件一定要Bool值
//        3. 執行區塊就算只有一行也要花括號
//        4. 比較字串是否相等用==就可以了, isEqual是===
//        5. 不能用怪招只跑else
        

//        if (false)
//            print("條件為真")
//        else
//            print("條件為假")
            
        let string = "ABCD"
        if (string == "ABCD")
        {
            print("Swift條件為真")
        }
        else
        {
            print("Swift條件為假")
        }
        
//        {
//            print("Swift條件為假")
//        }
    }
}

