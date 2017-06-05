//
//  test_ViewController.swift
//  seconde_ios_app
//
//  Created by chang on 2017/6/1.
//  Copyright © 2017年 changname. All rights reserved.
//

import UIKit

class test_ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func helloWorldAction(nameTextField : UITextField){
        nameLabel.text = "\(String(describing: nameTextField.text))"}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
