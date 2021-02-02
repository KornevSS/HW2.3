//
//  ViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 02.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func userLoginButtonClicked() {
//        guard let userLoginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") else { return }
//        self.navigationController?.pushViewController(userLoginVC, animated: true)
        
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? LoginViewController else { return }
        guard let nameOfUser = userNameTextField.text else { return }
        destinationVC.nameOfUser = nameOfUser
    }
    
}

