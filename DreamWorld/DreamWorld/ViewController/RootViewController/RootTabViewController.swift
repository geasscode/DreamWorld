//
//  RootTabViewController.swift
//  DreamWorld
//
//  Created by imac on 14-6-12.
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit



class RootTabViewController: UITabBarController, ChangeTableDelegate{
   
    
    var tabBarView = CustomTabBar()

  
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // 初始化控制器
        initViewController()
        
        // 自定义TabBar
        customTabBar()
        
    }
    
    // 点击TabBar代理方法回掉
    func changeIndex(index:Int){
        self.selectedIndex = index
    }
    
    
    // 自定义TabBar
    func customTabBar(){
        
        self.tabBar.hidden = true;
        var array = NSBundle.mainBundle().loadNibNamed("CustomTabBarView", owner: self, options: nil)
        tabBarView = array[0] as CustomTabBar
        tabBarView.changeTableDelegate = self
        tabBarView.dynamicButton!.selected = true
        tabBarView.frame = CGRect(x: 0, y: self.view.frame.size.height - 49 , width: 320, height: 49)
        self.view.addSubview(tabBarView)
    }
    
    
    // 初始化各个TabBarViewController
    func initViewController(){
        
        // 动态
        var dynamicViewController = UIStoryboard(name:"Dynamic",bundle:nil).instantiateInitialViewController() as UINavigationController
        dynamicViewController.navigationBar.setBackgroundImage(UIImage(named:"navigation_bg"), forBarMetrics: UIBarMetrics.Default)
        
        
        // 精选
        var handPickerViewController = UIStoryboard(name:"HandPicker",bundle:nil).instantiateInitialViewController() as UINavigationController
        handPickerViewController.navigationBar.setBackgroundImage(UIImage(named:"navigation_bg"), forBarMetrics: UIBarMetrics.Default)
       
        
        // 图片博客
        var pictureViewController = UIStoryboard(name:"Picture",bundle:nil).instantiateInitialViewController() as UINavigationController
         pictureViewController.navigationBar.setBackgroundImage(UIImage(named:"navigation_bg"), forBarMetrics: UIBarMetrics.Default)
        
        // 音乐
        var musicViewController = UIStoryboard(name:"Music",bundle:nil).instantiateInitialViewController() as UINavigationController
          musicViewController.navigationBar.setBackgroundImage(UIImage(named:"navigation_bg"), forBarMetrics: UIBarMetrics.Default)
        
        // 更多
        var moreViewController = UIStoryboard(name:"More",bundle:nil).instantiateInitialViewController() as UINavigationController
          moreViewController.navigationBar.setBackgroundImage(UIImage(named:"navigation_bg"), forBarMetrics: UIBarMetrics.Default)
        
        
        var tabBarViewControllers = [dynamicViewController,handPickerViewController,pictureViewController,musicViewController,moreViewController]
        
        self.setViewControllers(tabBarViewControllers, animated: true)
    }
}
