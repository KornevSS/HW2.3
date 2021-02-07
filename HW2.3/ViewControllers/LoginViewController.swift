//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Сергей Корнев on 02.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Public propertiew
    var user: User!
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers!
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let aboutVC = viewController as? AboutViewController {
                aboutVC.user = user
            } else if let resumeVC = viewController as? ResumeViewController {
                resumeVC.user = user
            } else if let hobbyVC = viewController as? HobbyViewController {
                hobbyVC.user = user
            }
        }
    }
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        user = User.getData()
    }
    
    // MARK: - IB Actions
    @IBAction func loginButtonPressed() {
        if userNameTextField.text! != user.userName || passwordTextField.text! != user.password {
            showAlert(
                title: "⚠️ Wrong name or password!",
                message: "Please enter correct username and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserName() {
        showAlert(title: "😳 Your user name is", message: user.userName)
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "🤦🏼‍♂️ Your password is", message: user.password)
    }

    @IBAction func unwind(segue: UIStoryboardSegue) {
        passwordTextField.text = nil
        userNameTextField.text = nil
    }
 
}


// MARK: - Alert controller
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

// MARK: - Work with keyboard
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
