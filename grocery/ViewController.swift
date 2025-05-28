//
//  ViewController.swift
//  grocery
//
//  Created by Celio Junior on 02/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var groceryImage: UIImageView!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var grocery: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    func setLayout()
    {
        loginTextField.placeholder = "e-mail or username"
        passwordTextField.placeholder = "senha"
        passwordTextField.isSecureTextEntry = true
        // button
        loginButton.layer.cornerRadius = 28
        
        // image
        groceryImage.image = UIImage(named: "GroceryLogin")
        
        // text field
        loginTextField.layer.cornerRadius = 16
        loginTextField.layer.shadowOpacity = 0.1
        loginTextField.layer.shadowRadius = 20
        passwordTextField.layer.cornerRadius = 16
        passwordTextField.layer.shadowOpacity = 0.1
        passwordTextField.layer.shadowRadius = 20
        //
        grocery.layer.cornerRadius = 18
    }
    
}
