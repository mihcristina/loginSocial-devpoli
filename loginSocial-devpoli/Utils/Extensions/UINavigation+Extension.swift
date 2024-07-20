//
//  UINavigation+Extension.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 20/07/24.
//

import UIKit

extension UINavigationController {

    func customNavigation(_ title: String) {
        if let navigationBar = self.navigationController?.navigationBar {
            let backButton = UIButton()
            backButton.setImage(UIImage(named: "left") ?? UIImage(), for: .normal)
            navigationBar.addSubview(backButton)
            backButton.translatesAutoresizingMaskIntoConstraints = false
            backButton.topAnchor.constraint(equalTo: self.navigationBar.topAnchor, constant: 26).isActive = true
            backButton.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -10).isActive = true
            backButton.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 17).isActive = true
            backButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
            
            let titleLabel = UILabel()
            titleLabel.text = title
            titleLabel.textColor = .black
            navigationBar.addSubview(titleLabel)
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.centerXAnchor.constraint(equalTo: navigationBar.centerXAnchor).isActive = true
            titleLabel.centerYAnchor.constraint(equalTo: navigationBar.centerYAnchor).isActive = true
        }
    }

}
