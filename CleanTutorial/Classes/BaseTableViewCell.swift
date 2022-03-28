//
//  BaseTableViewCell.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation
import UIKit

class BaseTableViewCell: UITableViewCell, UISetupable {
    
    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Functions
    func setupUI() {}
    
    func updateUI() {}
}
