//
//  HobbyViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 06.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class HobbyViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var hobbyTextView: UITextView!
    
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbyTextView.text = user.person.info.hobby
        hobbyTextView.layer.cornerRadius = hobbyTextView.frame.width / 50
    }

}
