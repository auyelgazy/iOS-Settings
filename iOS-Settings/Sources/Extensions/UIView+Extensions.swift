//
//  UIView+Extensions.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
