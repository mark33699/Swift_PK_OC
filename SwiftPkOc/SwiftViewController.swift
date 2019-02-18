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
        
        
        //pk.002_多行字串(Mock Json滿好用的)[Swift]
//        let strMuitlLine =
//        """
//        白日依山盡
//        黃河入海流
//        欲窮千里目
//        更上一層樓
//        """
//        print(strMuitlLine)
        
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
        
        //pk.005_關於Switch[Swift]
        //    1. case一定要窮舉, 不然就加default
        //    2. 不用再加break了, 相反的, 要繼續就加fallthrough
        //    3. 同時比較多個條件是用逗號分隔(不能換行)case a, b:
        //    4. 任何型別都可比對(字串也可)
        //    5. 為什麼case不往內縮.....
        
        let caseString : String = "A"
        
        switch caseString
        {
        case "A", "B":
            print("我可能是Swift的A")
            print("我可能是Swift的B")
//            fallthrough
        case "C":
            print("我是Swift的C")
        default:
            print("我不是Swift的A或B或C")
        }
        
        //pk.007_關於function[Swift]
        //    1. 傳進來的參數如果是VT不可修改, 但如果是RT就會改到外面的
        //    2. 預設一個參數名稱內外共用
        //    3. 但是就算參數或回傳值型別不同也算不同function//好像是4.2改掉了
        //    4. 可以給預設值
        //    5. 參數用逗號分隔
        
        func swiftFunction(num : Int = 100, date : Date)
        {
            //VT不能改
//            num += 1
        }
        
        func swiftFunction(someOne : JustClass)
        {
            someOne.name = someOne.name + "無名小卒"
        }

        var someOne = JustClass()
        someOne.name = "我是"
        swiftFunction(someOne: someOne)
        print(someOne.name)
        
        swiftFunction(date: Date())
        
        //pk.008_do while改叫repeat while[Swift]
//        repeat
//        {
//
//        }while(true)
        
        //pk.009_關於Dictionary[Swift]
//        1. 簡寫改用方括號= =
//        2. 預設是不能用不同型別的元素, 除非用泛型(用逗號隔開= =)
        let dict : Dictionary<String,Any> = ["name":"Swift","age":"18"]
        
        //pk.010_關於Class[Swift]
//        1. 確保所有成員都要被初始化, 不然就強制要有init方法
//        2. 可以不用繼承自NSObject
//        3. 有Struct可以用, 代替Class當成Model
//        4. Struct會自動產生init方法
//        5. init規則
//            i. 只有convenience init 可以摳別的init
//            ii. 只有designated init 可以摳super的init
//            iii. required init 一定要實作
        
        //pk.011_關於POP[Swift]
//        1.ptc+ext就可做到繼承, 但又可同時conform多個協定, 達到組織扁平化
        let mark = Man()
        mark.love()
        
        let ocVC = OCViewController()
        ocVC.love()
    }
}

class JustClass
{
    var name = ""
}

class OtherClass
{
    var name = ""
    var aka : String
    
    convenience init(aka : String)
    {
//        self.aka = aka
        self.init(aka: aka, name: "方便")
    }
    
    init(aka : String, name : String)
    {
        self.aka = aka
        self.name = name
    }
}

struct JustModel
{
    var name = ""
    var aka : String
    {
        return name + "."
    }
}

// MARK: - POO

protocol GoodMan
{
    func love()
}

extension GoodMan
{
    func love()
    {
        print("I ❤️ Swift")
    }
}

protocol BadMan
{
    func love()
}

extension BadMan
{
    func love()
    {
        print("I 🔪 Swift")
    }
}

//可以遵從兩個協定, 但如果有同名函數同時被擴展, 就會衝到
class Man: GoodMan//, BadMan
{
    
}
