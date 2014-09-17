//
//  AppDelegate.swift
//  DreamWorld
//
//  Created by 王腾 on 14-6-15.   QQ 415478506
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?
    var rootTabViewController : RootTabViewController!
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
      UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
        rootTabViewController = RootTabViewController()
      
        self.window!.rootViewController = rootTabViewController
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
     
    }

    func applicationDidEnterBackground(application: UIApplication) {
    
    }

    func applicationWillEnterForeground(application: UIApplication) {
       
    }

    func applicationDidBecomeActive(application: UIApplication) {
      
    }

    func applicationWillTerminate(application: UIApplication) {
   
    }


}

