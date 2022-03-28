//
//  BaseViewController.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, UISetupable, Setupable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupUI()
    }
    
    func setup() {}
    
    func setupUI() {}
    
    func updateUI() {}
}
