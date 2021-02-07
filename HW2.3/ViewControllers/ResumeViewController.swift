//
//  ResumeViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 06.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class ResumeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var carLabel: UILabel!
    @IBOutlet var totalExpLabel: UILabel!
    @IBOutlet var currentExpLabel: UILabel!
    @IBOutlet var expTextView: UITextView!
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = "\(user.person.info.resume.age) year(s)"
        carLabel.text = user.person.info.resume.car ? "✅" : "➖"
        totalExpLabel.text = "\(user.person.info.resume.totalExperience) year(s)"
        currentExpLabel.text = "\(user.person.info.resume.currentExperience) year(s)"
        expTextView.text = user.person.info.resume.experience
        expTextView.layer.cornerRadius = expTextView.frame.width / 50
    }

}
