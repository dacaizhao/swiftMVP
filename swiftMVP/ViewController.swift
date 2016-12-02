//
//  ViewController.swift
//  swiftMVP
//
//  Created by point on 2016/12/2.
//  Copyright © 2016年 dacai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate lazy var presenter : ViewPresenster = {
        return ViewPresenster(presenter: self)
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        presenter.getData()
    }
}

// MARK:- 获取数据//
extension ViewController:ViewPresensterProtocol{
    
    func showPost(_ resulet: [DCModel]) {
        print(resulet)
    }
}
