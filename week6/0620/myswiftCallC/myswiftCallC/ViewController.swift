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
        
        print("hello")
        helloFromCpp();
        oc_c();
        
        var o:oc
        o = oc()
        o.oc_fun()

    }
}

