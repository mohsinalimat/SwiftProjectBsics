//
//  UITextView+Extension.swift
//  ZPTvStation
//
//  Created by Tao on 2017/10/28.
//  Copyright © 2017年 Tao. All rights reserved.
//

import UIKit

extension UITextView{
    
    public func toolBar(title :String = ""){
        let toolView = UIToolbar(frame: CGRect(x: 0, y: 0, width: _SW, height: 40))
        toolView.barTintColor = _RGB(0xb0b0b0)
        let spce = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let hide = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissKeyBoard))
        let title = UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
        title.tintColor = UIColor.white
        hide.tintColor = _RGB(0x00A0E9)
        toolView.items = [spce,title,spce,hide]
        self.inputAccessoryView = toolView
    }
    
    @objc func dismissKeyBoard(){
        self.resignFirstResponder()
    }
    
}
