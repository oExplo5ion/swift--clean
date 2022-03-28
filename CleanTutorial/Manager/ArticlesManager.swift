//
//  ArticlesManager.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation

class ArticlesManager {
    
    private var articles: [String] {
        var ar = [String]()
        for i in 0..<10 {
            ar.append("Article: \(i)")
        }
        return ar
    }
    
    func getArticles() -> [String] {
        return articles
    }
}
