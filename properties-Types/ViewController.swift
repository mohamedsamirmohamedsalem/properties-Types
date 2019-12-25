//
//  ViewController.swift
//  properties-Types
//
//  Created by Mohamed Samir on 12/25/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // stored properity
    var mohamedAge : Int = 25
    
    // computed properity
    var baselAge : Int {
        //Getter case as xcode do operations to get the value of baselAge
        get {
            return mohamedAge - 2
        }
        // settet case that baselAge will be in case of changing the value
        set {
            print("baselAge ===> \(newValue)")
             
        }
    }
    
    // observer properity observe for the change of value , willset excute first the  didset come after
    var myAge : Int = 20 {
        willSet{
           print("newvalue \(newValue)")
        }
        didSet{
            print("oldvalue \(oldValue)")
            if myAge >= 100{
                print("Invalid Age")
                myAge = 100
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        print(mohamedAge)
        print(baselAge)
        // if we don't have a setter value we can not set baselAge to = 20
        baselAge = 20

        myAge = 150
        print(myAge)
    }


}

