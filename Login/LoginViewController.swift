//
//  ViewController.swift
//  Login
//
//  Created by Paige Plander on 4/5/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    struct Constants {
        static let invalidEmailTitle = "Invalid username or password"
        static let invalidEmailMessage = "Please try again"
        static let buttonMargin: CGFloat = 32
        static let textFieldMargin: CGFloat = 15
        static let verticalSpacing: CGFloat = 16
        static let buttonHeight: CGFloat = 50
        static let bottomButtonMargin: CGFloat = 50
        static let buttonColor: UIColor = UIColor(hue: 0.5389, saturation: 1, brightness: 0.92, alpha: 1.0)
        static let buttonCornerRadius: CGFloat = 10
        static let labelTextSize: CGFloat = 50
    }

    let loginModel = LoginModel(filename: "Lab6Names")
    
    var loginButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = Constants.buttonCornerRadius
        button.layer.masksToBounds = true
        return button
    }()
    
    var loginLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Avenir", size: Constants.labelTextSize)
        label.text = "Login View Controller"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    var userNameField: UITextField = {
        var textfield = UITextField()
        textfield.placeholder = "berkeley.edu account"
        return textfield
    }()
    
    var passwordField: UITextField = {
        var textfield = UITextField()
        textfield.placeholder = "Password"
        return textfield
    }()
    
    var loginWrapperView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = Constants.buttonCornerRadius
        view.layer.masksToBounds = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Constants.buttonColor
        view.addSubview(loginWrapperView)
        view.addSubview(loginLabel)
        loginWrapperView.addSubview(loginButton)
        loginWrapperView.addSubview(userNameField)
        loginWrapperView.addSubview(passwordField)
        loginButton.addTarget(self, action: #selector(loginButtonWasPressed), for: .touchDown)
        setupConstraints()
    }
    
    
    @IBAction func loginButtonWasPressed(sender: UIButton) {
        authenticateUser(username: userNameField.text, password: passwordField.text)
    }
    
    
    func setupConstraints() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        userNameField.translatesAutoresizingMaskIntoConstraints = false
        loginWrapperView.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints for the "Login View Controller" label
        loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.widthAnchor.constraint(equalTo: loginWrapperView.widthAnchor).isActive = true
        
        
        // Constraints for the UIView holding login button and textfields
        loginWrapperView.center = view.center
        loginWrapperView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        loginWrapperView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        loginWrapperView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginWrapperView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Constraints for the login button
        loginButton.centerXAnchor.constraint(equalTo: loginWrapperView.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: loginWrapperView.bottomAnchor, constant: -Constants.verticalSpacing).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: Constants.buttonHeight).isActive = true
        loginButton.widthAnchor.constraint(equalTo: loginWrapperView.widthAnchor, multiplier: 0.60).isActive = true

        // Constraints password text field
        passwordField.leadingAnchor.constraint(equalTo: loginWrapperView.leadingAnchor, constant: Constants.textFieldMargin).isActive = true
        passwordField.trailingAnchor.constraint(equalTo: loginWrapperView.trailingAnchor, constant: -Constants.textFieldMargin).isActive = true
        passwordField.bottomAnchor.constraint(lessThanOrEqualTo: loginButton.topAnchor, constant: -Constants.verticalSpacing).isActive = true
        
        // Constraints username text field
        userNameField.centerXAnchor.constraint(equalTo: passwordField.centerXAnchor).isActive = true
        userNameField.widthAnchor.constraint(equalTo: passwordField.widthAnchor).isActive = true
        userNameField.bottomAnchor.constraint(equalTo: passwordField.topAnchor, constant: -Constants.verticalSpacing).isActive = true
        userNameField.topAnchor.constraint(equalTo: loginWrapperView.topAnchor, constant: Constants.verticalSpacing + 8).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /// Displays an alert indicating whether or not the login was successful
    /// You do not need to edit this function, but you will want to use it for the lab.
    ///
    /// - Parameters:
    ///   - username: the user's berkeley.edu address
    ///   - password: the user's first name (what a great password!)
    func authenticateUser(username: String?, password: String?) {
        if !loginModel.authenticate(username: username, password: password) {
            let alert = UIAlertController(title: Constants.invalidEmailTitle, message: Constants.invalidEmailMessage, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else {
            // TODO paige: update this to display a view
            print("logged in")
        }
    }
}

