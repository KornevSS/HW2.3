//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 03.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var nameOfUser: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = nameOfUser
    }


}
