//
//  CreateAccountViewController.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 20/07/24.
//

import UIKit

class CreateAccountViewController: UIViewController {

    var createAccountView: CreateAccount?
    
    override func loadView() {
        createAccountView = CreateAccount()
        self.view = createAccountView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
