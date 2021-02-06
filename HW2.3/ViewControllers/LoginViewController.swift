//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 02.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: Private properties
    private let user = "user"
    private let password = "password"
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.userName = user
    }
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    // MARK: IB Actions
    @IBAction func loginButtonPressed() {
        if userNameTextField.text! != user || passwordTextField.text! != password {
            showAlert(
                title: "Wrong name or password",
                message: "Please enter correctly!",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotButtonsEventHandler(_ sender: UIButton) {
        var title: String
        var message: String
        if sender.titleLabel?.text == "Forgot User Name?" {
            title = "Your user name is"
            message = user
        } else {
            title = "Your password is"
            message = password
        }
        showAlert(title: title, message: message)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        passwordTextField.text = nil
        userNameTextField.text = nil
    }
 
}

// MARK: Alert controller
extension LoginViewController {
    private func showAlert(title: String?, message: String?, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ОК", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButtonPressed()
        }
        return true
    }
}
