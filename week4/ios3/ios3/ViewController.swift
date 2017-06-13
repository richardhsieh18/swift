//
//  ViewController.swift
//  ios3
//
//  Created by chang on 2017/6/5.
//  Copyright © 2017年 changname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func handle(_ sender: UIButton) {
        print("ddddd")
    }
    
    @IBAction func come_back(_ sender:UIStoryboardSegue){
        print("Sequie")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

