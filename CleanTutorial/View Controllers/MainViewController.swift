//
//  ViewController.swift
//  CleanTutorial
//
//  Created by Aleksey on 28.03.2022.
//

import UIKit

class MainViewController: BaseViewController, InteractableViewController {
    // MARK: - Attributes
    typealias Interactor = ArticlesInteractor
    private(set) var interactor: ArticlesInteractor?
    private(set) var dataSource = [Article]()
    
    // MARK: - UI
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .clear
        view.register(ArticleTableViewCell.self, forCellReuseIdentifier: ArticleTableViewCell.reuseIdentifier)
        view.delegate = self
        view.dataSource = self
        return view
    }()
    
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchArticles()
    }
    
    // MARK: - Overrides
    override func setup() {
        let presenter = ArticlesPresenter(viewController: self)
        interactor = ArticlesInteractor(presenter: presenter)
    }
    
    override func setupUI() {
        view.backgroundColor = .white
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

extension MainViewController: ArticlesDisplayLogic {
    // MARK: - input
    func fetchArticles() {
        interactor?.fetchArticles()
    }
    
    // MARK: - Output
    func display(articles: [Article]) {
        self.dataSource = articles
        tableView.reloadData()
    }
}
