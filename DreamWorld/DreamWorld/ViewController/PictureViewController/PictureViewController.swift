//
//  PictureViewController.swift
//  DreamWorld
//
//  Created by 王腾 on 14-6-15.   QQ 415478506
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {

  
    @IBOutlet var pictureCollection : UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
   
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 21
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        
        var cell : UICollectionViewCell
        if indexPath.row % 2 == 0
        {
            cell = collectionView.dequeueReusableCellWithReuseIdentifier("itemTwo", forIndexPath:indexPath) as UICollectionViewCell
        
        }else if indexPath.row % 3 == 0 {
            
            cell = collectionView.dequeueReusableCellWithReuseIdentifier("itemThree", forIndexPath:indexPath) as UICollectionViewCell
        }else {
            cell = collectionView.dequeueReusableCellWithReuseIdentifier("itemOne", forIndexPath:indexPath) as UICollectionViewCell
            
        }
        return cell
    }

}
