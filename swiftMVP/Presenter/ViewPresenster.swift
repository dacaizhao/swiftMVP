//
//  ViewPresenster.swift
//  pattern1
//
//  Created by Septiyan Andika on 4/19/16.
//  Copyright © 2016 Septiyan Andika. All rights reserved.
//

import UIKit

protocol ViewPresensterProtocol {
    func showPost(_ resulet: [DCModel])
}

class ViewPresenster: NSObject {
    var presenter: ViewPresensterProtocol!
    lazy var model:[DCModel] = [DCModel]()
    init(presenter:ViewPresensterProtocol) {
        self.presenter = presenter;
    }
    
    func getData(){
        let dict = [
            ["user_id":"1","user_name":"zhaodacai1"],
            ["user_id":"2","user_name":"zhaodacai2"],
            ["user_id":"3","user_name":"zhaodacai3"],
            ["user_id":"4","user_name":"zhaodacai4"],
            ["user_id":"5","user_name":"zhaodacai5"],
            ["user_id":"6","user_name":"zhaodacai6"],
            ["user_id":"7","user_name":"zhaodacai7"]
        ]
        
        for item in dict {
            model.append(DCModel(dict: item))
        }
        
        self.presenter.showPost(model)
    }
    
    
}
