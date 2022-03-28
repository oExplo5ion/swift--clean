//
//  InteractableViewController.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation
import UIKit

protocol InteractableViewController: UIViewController {
    associatedtype Interactor
    var interactor: Interactor? { get }
}
