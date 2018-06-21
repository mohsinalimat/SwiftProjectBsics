//
//  FirstViewController.swift
//  SwiftProjectBsics_Example
//
//  Created by Tao on 2018/6/14.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import UIKit
import SwiftProjectBsics
import CryptoSwift




class FirstViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.httpPresenter.request(url: "",
                                   parameters: [:])
            .responseObject { (response: HttpDataResponse<ObjectModel>) in
                
                print(response.data?.mobileNo)

                
                
        }
    }


}
