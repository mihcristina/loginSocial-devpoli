//
//  CreateAccount.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 20/07/24.
//

import UIKit

class CreateAccount: UIView {

    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont(name: "Roboto-Regular", size: 18)
        label.textColor = .descriptionGray
        label.text = "Cria sua conta e comece a gerenciar sua\nvida financeira"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension CreateAccount: ViewCodable {

    func buildHierarchy() {
        addSubview(descriptionLabel)
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 22),
            descriptionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
    
    func configClass() {
        backgroundColor = .white
    }

}
