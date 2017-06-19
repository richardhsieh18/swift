//
//  ViewController.swift
//  ios4
//
//  Created by chang on 2017/6/5.
//  Copyright © 2017年 changname. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var account: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ xxx: UIButton) {
        
        var bundle:Bundle
        bundle = Bundle.main
        
        var data_path:String
        data_path = bundle.path(forResource: "members", ofType: "txt")!
        
        var content:String!
        do{
            content = try String.init(contentsOfFile: data_path, encoding: String.Encoding.utf8)
            print(content)
        }catch{
            
        }
        
        let lines:[String] = content.components(separatedBy: "\n")
        var is_member = false
        for line in lines{
            let columns = line.components(separatedBy: ",")
            print(columns)
            if columns[1] == self.account.text && columns[2] == self.password.text{
                is_member = true
            }
        }
        
        //let account_input = self.account.text
        //let password_input = self.password.text
        
        if is_member{
        //if account_input == "john"{
            print("請輸入密碼")
            //if password_input == "1234"{
                print("歡迎")
                //self.performSegue(withIdentifier: "go", sender: xxx) 改成另一種轉場效果
                let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                
                let page2_controller:ViewController2 = storyboard.instantiateViewController(withIdentifier: "page2") as! ViewController2
                
                self.account.resignFirstResponder()
                self.present(page2_controller, animated: true, completion: nil)
                
            }else{
                print("密碼錯誤")
                let pop:UIAlertController = UIAlertController(title: "密碼錯誤title", message:"密碼錯誤message", preferredStyle: .alert)
                let button:UIAlertAction = UIAlertAction(title: "確定", style: .default, handler: nil)
                pop.addAction(button)
                self.present(pop, animated: true, completion: nil)
            }
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        self.account.text = ""
        self.password.text = ""
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("文字框正要開始輸入東西了~")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("文字框開始輸入東西了~")
    }
    
    
}

