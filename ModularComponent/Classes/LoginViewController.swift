//
//
// Copyright 2018 Kobe, Inc.
// All rights reserved.
//
// This file, its contents, concepts, methods, behavior, and operation
// (collectively the "Software") are protected by trade secret, patent,
// and copyright laws. The use of the Software is governed by a license
// agreement. Disclosure of the Software to third parties, in any form,
// in whole or in part, is expressly prohibited except as authorized by
// the license agreement.
//

import UIKit

protocol LoginViewControllerProtocol {
    func didTouchToLogin(email: String, password: String)
    func didFail(errorMessage: String)
}

class LoginViewController: UIViewController {
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            emailTextField.placeholder = "emailPlaceholder".localized(bundle: Constants.bundle(for: self))
            emailTextField.delegate = self
        }
    }
    @IBOutlet weak var passwordTextField: UITextField! {
        didSet {
            passwordTextField.placeholder = "passwordPlaceholder".localized(bundle: Constants.bundle(for: self))
            passwordTextField.delegate = self
        }
    }
    @IBOutlet weak var loginButton: UIButton! {
        didSet {
            loginButton.setTitle("loginButtonTitle".localized(bundle: Constants.bundle(for: self)), for: .normal)
            loginButton.roundedSideBorder()
            loginButton.backgroundColor = .blueTint
            loginButton.setTitleColor(.white, for: .normal)
        }
    }
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var delegate : LoginViewControllerProtocol?
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Request Handling
    
    private func setLoading(state: Bool) {
        state ? activityIndicator.startAnimating() : activityIndicator.stopAnimating()
        view.isUserInteractionEnabled = !state
    }
    
    private func showError(error: String) {
        errorLabel.text = error
        errorLabel.isHidden = false
    }
    
    //MARK: - Touch Handling
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func loginButtonTouched(_ sender: UIButton) {
        guard let email = emailTextField.text, let password = passwordTextField.text, !email.isEmpty, !password.isEmpty else {
            let errorMessage = "fieldsError".localized(bundle: Constants.bundle(for: self))
            showError(error: errorMessage)
            delegate?.didFail(errorMessage: errorMessage)
            return 
        }
        delegate?.didTouchToLogin(email: email, password: password)
    }
    
    func performSegueToMainScreen() {
        performSegue(withIdentifier: "mainScreenSegue", sender: nil)
    }
    
    static func createLoginViewController() -> UIViewController? {
        let storyboard = UIStoryboard(name: "Storyboard", bundle: Constants.bundle(for: self))
        return storyboard.instantiateInitialViewController()
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
