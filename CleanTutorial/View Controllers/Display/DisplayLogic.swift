//
//  DisplayLogic.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation

protocol ArticlesDisplayLogic: AnyObject {
    func fetchArticles()
    func display(articles:[Article])
}
