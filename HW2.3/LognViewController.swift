//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 02.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    
    @IBAction func didEndOnExitUserName() {
        passwordTextField.becomeFirstResponder()
    }
    
    @IBAction func loginButtonClick(_ sender: Any) {
        if userNameTextField.text != "user" && passwordTextField.text != "welcome" {
            let alert = UIAlertController(title: "Wrong name or password", message: "Please enter correctly!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ОК", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
    
    
    @IBAction func forgotButtonsEventHandler(_ sender: UIButton) {
        var name1 = ""
        var name2 = ""
        if sender.titleLabel?.text == "Forgot User Name?" {
            name1 = "Your user name is"
            name2 = "'user'"
        } else {
            name1 = "Your password is"
            name2 = "'welcome'"
        }
        let alert = UIAlertController(title: name1, message: name2, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ОК", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    // всю бошку сломал с переходом по Return! Сдаюсь!
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTextField.text
    }
    
}

