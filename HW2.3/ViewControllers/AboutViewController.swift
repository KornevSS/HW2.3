//
//  AboutViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 06.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var aboutTextView: UITextView!
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutTextView.text = user.person.info.aboutMe
        aboutTextView.layer.cornerRadius = aboutTextView.frame.width / 50
    }
    
}
