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
    @IBOutlet var userPhotoImageView: UIImageView!
    
    // MARK: Public properties
    var user: User!
    
    // MARK: View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(user!.person.name) \(user!.person.surname)!"
        guard let image = UIImage(named: user!.person.photo) else { return }
        userPhotoImageView.contentMode = .scaleAspectFill
        userPhotoImageView?.layer.cornerRadius = userPhotoImageView!.frame.width / 20
        userPhotoImageView?.image = image
    }

}
