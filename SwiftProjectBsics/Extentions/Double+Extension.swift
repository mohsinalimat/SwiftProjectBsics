//
//  Double+Extension.swift
//  Lawyer
//
//  Created by Tao on 2018/1/1.
//  Copyright © 2018年 Tao. All rights reserved.
//

import UIKit

extension Double{
    public var videoTimeString :String {
        let hour = self / 60 / 60
        let minute = (self - hour * 60 * 60) / 60
        let second = self.truncatingRemainder(dividingBy: 60)
        var string = String.init(format: "%02d:%02d", minute, second)
        if hour > 0 {
            string = String.init(format: "%02d", hour) + string
        }
        return string
    }
    
    public var distanceNowTime :String{
        let now :Double  = Date().timeIntervalSince1970
        let offset = Int(now - self)
        if offset < 60 {
            return "1m ago"
        }else if offset < 3600{
            return _S("%dm ago", args: offset/60)
        }else if offset < 86400{
            return _S("%dh ago", args: offset/3600)
        }else{
            let formatter = DateFormatter()
            formatter.dateFormat = "MM-dd HH:mm"
            let time = Date(timeIntervalSince1970: self)
            return formatter.string(from: time)
        }
    }
    
    
    public var yearMonthDay :String{
       return dateFormat(format: "yyyy-MM-dd")
    }
    
    public var transformDateAndTime :String{
        return dateFormat(format: "MM-dd HH:mm")
    }
    
    public func dateFormat(format :String) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let time = Date(timeIntervalSince1970: self)
        return formatter.string(from: time)
    }

    
    
    
}
