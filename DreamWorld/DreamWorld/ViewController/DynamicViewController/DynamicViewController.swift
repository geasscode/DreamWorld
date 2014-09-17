//
//  DynamicViewController.swift
//  DreamWorld
//
//  Created by 王腾 on 14-6-15.   QQ 415478506
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit

class DynamicViewController: UIViewController {


    @IBOutlet var dynamicTableView : UITableView!
    
    
    @IBOutlet var tableHeaderVIew : UIView!
    
    var dynamicList:Array<DynamicModel> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        self.dynamicTableView.tableHeaderView = tableHeaderVIew
        
        dynamicList =  DynamicService().getDynamicDataForPlist()

    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return dynamicList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {

        var tableCell :DynamicCell = tableView.dequeueReusableCellWithIdentifier("dynamicCell") as DynamicCell
        tableCell.pic.image = UIImage(named:dynamicList[indexPath.row].pic as String)
        tableCell.nameLabel.text = dynamicList[indexPath.row].name as String
        tableCell.recommedLabel.text = dynamicList[indexPath.row].recommend as String
        tableCell.typeLabel.text = dynamicList[indexPath.row].type as String
        tableCell.timeLabel.text = dynamicList[indexPath.row].time as String
        
        return tableCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("dynamicDetail", sender: indexPath)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        var index : NSIndexPath = sender as NSIndexPath
        var dynamicDetailController:DynamicDetailController = segue!.destinationViewController as DynamicDetailController
        dynamicDetailController.titleName = dynamicList[index.row].name as String
        dynamicDetailController.address = dynamicList[index.row].address as String
        
    }


}
