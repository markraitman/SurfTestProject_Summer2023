//
//  ViewController.swift
//  SurfTestProject_Summer2023
//
//  Created by Марк Райтман on 01.08.2023.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Properties
    
    
    // MARK: - UI Components
    /// scroll view
    private let scrollView = UIScrollView()
    
    /// stack view
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        return stack
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Profile"
        label.font = .boldSystemFont(ofSize: 25)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        
        navigationItem.title = "Профиль"
    }
    
    // MARK: - Methods
    
    
}

extension MainViewController {
    // MARK: - UI Setup
    func setupUI() {
        
        /// ADDING SUBVIEWS
        view?.addSubview(scrollView)
        scrollView.addSubview(stackView)
        
        /// TAMIC
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        /// SETUP CONSTRAINTS
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
//            <#T##UIView#>.centerXAnchor.constraint(equalTo: <#T##UIView#>.centerXAnchor),
//            <#T##UIView#>.centerYAnchor.constraint(equalTo: <#T##UIView#>.centerYAnchor),
//
//            <#T##UIView#>.widthAnchor.constraint(equalToConstant: <#T##CGFloat#>),
//            <#T##UIView#>.heightAnchor.constraint(equalToConstant: <#T##CGFloat#>),
        ])
        
    }
}

