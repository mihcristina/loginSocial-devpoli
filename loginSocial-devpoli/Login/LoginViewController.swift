//
//  LoginViewController.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 14/07/24.
//

import UIKit

class LoginViewController: UIViewController {

    var loginView: LoginView?
    
    override func loadView() {
        loginView = LoginView()
        self.view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView?.delegate = self
    }

}

extension LoginViewController: LoginViewDelegate {

    func tappedButtonCreateAccount() {
        let viewController = CreateAccountViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

}
