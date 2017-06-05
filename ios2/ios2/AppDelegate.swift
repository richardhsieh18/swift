//
//  AppDelegate.swift
//  ios2
//
//  Created by chang on 2017/6/5.
//  Copyright © 2017年 changname. All rights reserved.
//

import UIKit

class my_page1_controller:UIViewController{
    
    var rect:CGRect!
    
    init(rect:CGRect){
        super.init(nibName: nil, bundle: nil)
        self.rect = rect

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handle(x:UIButton){
        //print("按鈕被按下去了")
        
        let page2:UIView = UIView(frame: self.rect)
        page2.backgroundColor = UIColor.green
        let page2_viewController:UIViewController = UIViewController()
        page2_viewController.view = page2
    
        self.view.addSubview(page2)
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let my_screen:UIScreen = UIScreen.main
        self.window = UIWindow(frame: my_screen.bounds)
        
        let page1:UIView = UIView(frame: my_screen.bounds)
        page1.backgroundColor = UIColor.lightGray
        let page1_viewController:my_page1_controller = my_page1_controller(rect: my_screen.bounds)
        page1_viewController.view = page1
        
        
        let button:UIButton
        button = UIButton(type: UIButtonType.system)
        let buttonX = Int((my_screen.bounds.size.width - 200)/2)
        let buttonY = Int((my_screen.bounds.size.height - 100)/2)
        button.frame = CGRect(x: buttonX, y: buttonY, width: 200, height: 100)
        button.backgroundColor = UIColor.cyan
        //button.titleLabel?.text = "終於出現的按鈕"
        //button.titleLabel?.textColor = UIColor.black
        button.setTitle("TT", for: UIControlState.normal)
        button.setTitle("被按下勒", for: UIControlState.highlighted)
        
        /*
        button.addTarget(self, action: #selector(AppDelegate.handle(x:)), for: UIControlEvents.touchUpInside)
        
         */
        button.addTarget(page1_viewController, action: #selector(my_page1_controller.handle(x:)), for: UIControlEvents.touchUpInside)
        page1.addSubview(button)
        

        
        
        
        
        self.window?.rootViewController = page1_viewController
        self.window?.makeKeyAndVisible()
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //(為了方便先暫時)以AppDelegate為target
    //注意!!target-action的處理函數有固定的簽名(signature) --- type
    /*搬移至最上面的controller
    func handle(x:UIButton){
        print("按鈕被按下去了")
    }
     */
}

