//
//  WelcomeViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 03.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName!)!"
    }
    
//    deinit {
//        print("Welcome view controller has been deinited")
//    }

}
