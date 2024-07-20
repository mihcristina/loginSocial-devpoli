//
//  LoginView.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 14/07/24.
//

import UIKit

class LoginView: UIView {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Olá!\nQuer melhorar sua vida financeira?"
        label.textColor = .black
        label.font = UIFont(name: "Roboto-Black", size: 22)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Identifique-se e fique por dentro de todas \nas novidades!"
        label.textColor = .customGrey
        label.font = UIFont(name: "Roboto-Regular", size: 18)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var emailTextField: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .backgroundGray
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 8
        textField.placeholder = "E-mail"
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .backgroundGray
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 8
        textField.placeholder = "Senha"
        return textField
    }()

    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueci a senha", for: .normal)
        button.setTitleColor(.primary, for: .normal)
        return button
    }()

    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ENTRAR", for: .normal)
        button.backgroundColor = .accent
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    lazy var dividerLeft: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .thinGrey
        return view
    }()
    
    lazy var comeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Entre com"
        label.font = UIFont(name: "Roboto-Regular", size: 16)
        label.textColor = .displayGrey
        return label
    }()
    
    lazy var dividerRight: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .thinGrey
        return view
    }()
    
    lazy var stackButtons: UIStackView = {
        var stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    lazy var facebookButton: LoginButton = {
        let button = LoginButton(image: UIImage(named: "facebook") ?? UIImage(), name: "Facebook")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var appleButton: LoginButton = {
        let button = LoginButton(image: UIImage(named: "apple") ?? UIImage(), name: "Apple")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var registerButton: RegisterButton = {
        let button = RegisterButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginView: ViewCodable {
    
    func buildHierarchy() {
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(forgotPasswordButton)
        addSubview(loginButton)
        addSubview(dividerLeft)
        addSubview(comeLabel)
        addSubview(dividerRight)
        addSubview(stackButtons)
        stackButtons.addArrangedSubview(facebookButton)
        stackButtons.addArrangedSubview(appleButton)
        addSubview(registerButton)
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 2),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),
            
            descriptionLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 19),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),
            
            emailTextField.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor, constant: 102),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),
            emailTextField.heightAnchor.constraint(equalToConstant: 55),

            passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),
            passwordTextField.heightAnchor.constraint(equalToConstant: 55),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 22),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),

            loginButton.topAnchor.constraint(equalTo: self.forgotPasswordButton.bottomAnchor, constant: 22),
            loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 48),
            loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -48),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            dividerLeft.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 68),
            dividerLeft.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            dividerLeft.heightAnchor.constraint(equalToConstant: 1),
            dividerLeft.widthAnchor.constraint(equalToConstant: 115),
            
            comeLabel.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 59),
            comeLabel.leadingAnchor.constraint(equalTo: self.dividerLeft.trailingAnchor, constant: 23),

            dividerRight.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 68),
            dividerRight.leadingAnchor.constraint(equalTo: self.comeLabel.trailingAnchor, constant: 23),
            dividerRight.heightAnchor.constraint(equalToConstant: 1),
            dividerRight.widthAnchor.constraint(equalToConstant: 114),

            stackButtons.topAnchor.constraint(equalTo: self.dividerLeft.bottomAnchor, constant: 18),
            stackButtons.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            stackButtons.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),

            registerButton.topAnchor.constraint(equalTo: self.stackButtons.bottomAnchor, constant: 76),
            registerButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
    
    func configClass() {
        self.backgroundColor = .white
    }

}
