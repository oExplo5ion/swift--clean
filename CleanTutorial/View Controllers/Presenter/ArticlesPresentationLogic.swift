//
//  ArticlesPresentationLogic.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation

protocol ArticlesPresentationLogic: AnyObject {
    init(viewController: ArticlesDisplayLogic)
    func present(articles: [String])
}

// MARK: - Presentation logic
class ArticlesPresenter: ArticlesPresentationLogic {
    
    weak var viewController:ArticlesDisplayLogic?
    
    required init(viewController: ArticlesDisplayLogic) {
        self.viewController = viewController
    }
    
    func present(articles: [String]) {
        let cArticles = articles.map { text -> Article in
            return Article(text: text)
        }
        viewController?.display(articles: cArticles)
    }
}
