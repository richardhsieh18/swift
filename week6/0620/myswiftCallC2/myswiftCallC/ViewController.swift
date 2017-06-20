//
//  ViewController.swift
//  myswiftCallC
//
//  Created by chang on 2017/6/20.
//  Copyright © 2017年 changname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func login(_ sender: UIButton) {

        var stringFromC:UnsafeMutablePointer<Int8>
        stringFromC = get_account()
        var whatIUseInSwfit:String
        
        whatIUseInSwfit = String(validatingUTF8: stringFromC)!;
        //whatIUseInSwfit = String(cString: stringFromC);
        print(whatIUseInSwfit)
        
        let xxx = get_number()!;
        print(xxx);
        }
}

