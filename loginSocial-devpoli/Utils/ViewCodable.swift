//
//  ViewCodable.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 14/07/24.
//

import Foundation

protocol ViewCodable: AnyObject {
    func buildHierarchy()
    func setupConstraint()
    func configClass()
    func setupView()
}

extension ViewCodable {

    func setupView() {
        buildHierarchy()
        setupConstraint()
        configClass()
    }

}
