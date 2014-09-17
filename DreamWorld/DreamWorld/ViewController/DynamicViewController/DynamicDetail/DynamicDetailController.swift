//
//  DynamicDetailController.swift
//  DreamWorld
//
//  Created by 王腾 on 14-6-15.   QQ 415478506
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit

class DynamicDetailController: UIViewController {

    
    @IBOutlet var webView : UIWebView!
    
    
    @IBOutlet var indicator : UIActivityIndicatorView!
 
    var titleName:String!
    var address:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titleName
        
        
        var leftBackBtn :UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        leftBackBtn.frame = CGRect(x: -10.0, y: 0, width: 60, height: 40)
        leftBackBtn.setTitle("返回", forState: UIControlState.Normal)
        leftBackBtn.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal)
        leftBackBtn.titleLabel!.font = UIFont.systemFontOfSize(13.0)
        leftBackBtn.setBackgroundImage(UIImage(named:"nav_backBtn"), forState: UIControlState.Normal)

       // leftBackBtn.addTarget(self, action: Selector("backAction"), forControlEvents: UIControlEvents.TouchUpInside)
        leftBackBtn.addTarget(self, action: Selector("backAction"), forControlEvents: .TouchUpInside)

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView:leftBackBtn)
        
        
        var urlStr:NSURL =  NSURL(string:address)
        var UrlRequest:NSURLRequest =  NSURLRequest(URL:urlStr)
        self.webView.loadRequest(UrlRequest)
        
        
    }
    override func viewWillDisappear(animated: Bool)
    {
        
        var appDelegate:AppDelegate =  UIApplication.sharedApplication().delegate as AppDelegate
        appDelegate.rootTabViewController.tabBar.hidden = true;
        appDelegate.rootTabViewController.tabBarView.hidden = false
        
        super.viewWillDisappear(animated)

    }
    
    override func viewWillAppear(animated: Bool)
    {
        
        var appDelegate:AppDelegate =  UIApplication.sharedApplication().delegate as AppDelegate
        appDelegate.rootTabViewController.tabBarView.hidden = true
        super.viewWillAppear(animated)
    }
    
    
    func backAction(){
        self.navigationController!.popViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    
    // webView代理
    func webViewDidStartLoad(webView: UIWebView!)
    {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        
        self.indicator.startAnimating()
    }
    func webViewDidFinishLoad(webView: UIWebView!)
    {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        self.indicator.stopAnimating()
    }
}
