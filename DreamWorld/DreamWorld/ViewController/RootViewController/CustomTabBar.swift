//
//  CustomTabBar.swift
//  DreamWorld
//
//  Created by imac on 14-6-12.
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit

protocol ChangeTableDelegate{
    
    func changeIndex(index:Int)
}

class CustomTabBar: UIView {

    // 动态
    @IBOutlet var dynamicButton : UIButton!
    
    // 精选
    @IBOutlet var handPickerButton : UIButton!
    
    // 图片博客
    @IBOutlet var pictureButton : UIButton!
    
    // 音乐
    @IBOutlet var musicButton : UIButton!
    
    @IBOutlet var more : UIButton!
    
    
    @IBOutlet var selectedImageView : UIImageView!
    
    var changeTableDelegate : ChangeTableDelegate!
    
    @IBAction func changeTabBar(sender : UIButton) {
        
        if sender == dynamicButton{
            self.dynamicButton.selected = true
            self.handPickerButton.selected = false
            self.pictureButton.selected = false
            self.musicButton.selected = false
            self.more.selected = false
            
            
            self.selectedImageView.center = self.dynamicButton.center
            
        } else if sender == handPickerButton {
            
            self.dynamicButton.selected = false
            self.handPickerButton.selected = true
            self.pictureButton.selected = false
            self.musicButton.selected = false
            self.more.selected = false
            self.selectedImageView.center = self.handPickerButton.center
            
        } else if sender == pictureButton {
            self.dynamicButton.selected = false
            self.handPickerButton.selected = false
            self.pictureButton.selected = true
            self.musicButton.selected = false
            self.more.selected = false
            self.selectedImageView.center = self.pictureButton.center
    
        } else if sender == musicButton {
            self.dynamicButton.selected = false
            self.handPickerButton.selected = false
            self.pictureButton.selected = false
            self.musicButton.selected = true
            self.more.selected = false
            self.selectedImageView.center = self.musicButton.center
        }else {
            self.dynamicButton.selected = false
            self.handPickerButton.selected = false
            self.pictureButton.selected = false
            self.musicButton.selected = false
            self.more.selected = true
            self.selectedImageView.center = self.more.center
        }

       changeTableDelegate.changeIndex(sender.tag)
    }
    
    
  

}
