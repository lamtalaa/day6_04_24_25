//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Yassine Lamtalaa on 5/2/25.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func LoginButtonTapped(_ sender: Any) {
        if userNameTextField.text == "admin" && passwordTextField.text == "admin" {
            print("Login Succesfull")
            performSegue(withIdentifier: "navigateToHome", sender: nil)
        } else {
            print("Login Failed")
        }
    }
    
}
