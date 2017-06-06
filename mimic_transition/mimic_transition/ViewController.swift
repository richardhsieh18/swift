//
//  ViewController.swift
//  mimic_transition
//
//  Created by chang on 2017/6/6.
//  Copyright © 2017年 changname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let transitionManager = TransitionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("有一個seque將會發動!!\(segue.identifier!)")
        
        let toViewController = segue.destination as UIViewController
        
        toViewController.transitioningDelegate = self.transitionManager
        
        
        
    
    }

    @IBAction func back(_ seque:UIStoryboardSegue){
    }

}

