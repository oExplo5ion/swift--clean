//
//  ArticlesBusinessLogic.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation

protocol ArticlesBusinessLogic: AnyObject {
    init(presenter: ArticlesPresentationLogic)
    func fetchArticles()
}

class ArticlesInteractor: ArticlesBusinessLogic {
    
    // MARK: - Attributes
    var presenter: ArticlesPresentationLogic?
    
    let manager = ArticlesManager()
    
    // MARK: - Lifecycle
    required init(presenter: ArticlesPresentationLogic) {
        self.presenter = presenter
    }
    
    // MARK: - Funcs
    func fetchArticles() {
        let articles = manager.getArticles()
        presenter?.present(articles: articles)
    }
}
