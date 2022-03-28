//
//  ArticleTableViewCell.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import Foundation
import UIKit

class ArticleTableViewCell: BaseTableViewCell {
    
    // MARK: - Attributes
    private var article: Article?
    
    // MARK: - UI
    private lazy var articleLabel: UILabel = {
        let view = UILabel()
        return view
    }()
    
    // MARK: - Functions
    func setup(article: Article) {
        self.article = article
        updateUI()
    }
    
    // MARK: - Overrides
    override func updateUI() {
        articleLabel.text = article?.text ?? ""
    }
    
    override func setupUI() {
        backgroundColor = .clear
        selectionStyle = .none
        
        addSubview(articleLabel)
        articleLabel.translatesAutoresizingMaskIntoConstraints = false
        articleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        articleLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        articleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        articleLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
}
