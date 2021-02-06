//
//  WelcomeViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 03.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var userNameLabel: UILabel!
    
    // MARK: Public properties
    var userName = ""
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName)!"
    }

}
