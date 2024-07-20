//
//  RegisterButton.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 20/07/24.
//

import UIKit

class RegisterButton: UIView {

    lazy var stackButton: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.distribution = .fillProportionally
        return stack
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Não tem conta?"
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    lazy var textButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Criar conta", for: .normal)
        button.setTitleColor(.tertiary, for: .normal)
        return button
    }()

    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension RegisterButton: ViewCodable {
    func buildHierarchy() {
        addSubview(stackButton)
        stackButton.addArrangedSubview(textLabel)
        stackButton.addArrangedSubview(textButton)
        
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            stackButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 106),
            stackButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -107),
            stackButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            textLabel.heightAnchor.constraint(equalToConstant: 18),
            textButton.heightAnchor.constraint(equalToConstant: 18),
        ])
    }
    
    func configClass() {
        
    }
    
    
}
