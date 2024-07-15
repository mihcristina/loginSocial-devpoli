//
//  UIFont+Extension.swift
//  loginSocial-devpoli
//
//  Created by Michelli Cristina de Paulo Lima on 14/07/24.
//

import UIKit

extension UIFont {
    
    enum FontType {
        case regular
        case bold
        
        func getFontName() -> String {
            switch self {
            case .regular:
                return "Roboto-Regular"
            case .bold:
                return "Roboto-Bold"
            }
        }
    }
    
    func customFont(type: FontType, size: CGFloat) -> UIFont {
        guard let font = UIFont(name: type.getFontName(), size: size) else {
                return UIFont.systemFont(ofSize: size, weight: .regular)
        }
        return font
    }

}
