//
//  UITableViewCell+ReuseIdentifier.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation
import UIKit

extension UITableViewCell {
    static var reuseIdentifier: String {
        return UITableViewCell.description()
    }
}
