//
//  LoginButton.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 17/07/24.
//

import UIKit

class LoginButton: UIControl {

    var image: UIImage
    var name: String
    
    lazy var backgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 8
        return view
    }()

    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = self.image
        image.contentMode = .scaleToFill
        return image
    }()

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = self.name
        return label
    }()

    init(image: UIImage, name: String) {
        self.image = image
        self.name = name
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension LoginButton: ViewCodable {
    func buildHierarchy() {
        addSubview(backgroundView)
        backgroundView.addSubview(logoImageView)
        backgroundView.addSubview(nameLabel)
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundView.heightAnchor.constraint(equalToConstant: 55),
            
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: self.backgroundView.leadingAnchor, constant: 16),
            logoImageView.heightAnchor.constraint(equalToConstant: 21),
            logoImageView.widthAnchor.constraint(equalToConstant: 21),
            
            nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: self.logoImageView.trailingAnchor, constant: 8),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
        ])
    }
    
    func configClass() {
        
    }
    
    
}
