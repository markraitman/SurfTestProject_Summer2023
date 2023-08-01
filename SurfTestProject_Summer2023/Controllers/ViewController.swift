//
//  ViewController.swift
//  SurfTestProject_Summer2023
//
//  Created by Марк Райтман on 01.08.2023.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    
    
    // MARK: - UI Components
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        navigationItem.title = "Профиль"
    }
    
    // MARK: - Methods
    
    
}

extension ViewController {
    // MARK: - UI Setup
    func setupUI() {
        
        /// ADDING SUBVIEWS
        view?.addSubview(<#T##UIView#>)
        
        /// TAMIC
        <#T##UIView#>.translatesAutoresizingMaskIntoConstraints = false
        
        /// SETUP CONSTRAINTS
        NSLayoutConstraint.activate([
            <#T##UIView#>.topAnchor.constraint(equalTo: <#T##UIView#>.topAnchor),
            <#T##UIView#>.bottomAnchor.constraint(equalTo: <#T##UIView#>.bottomAnchor),
            <#T##UIView#>.leadingAnchor.constraint(equalTo: <#T##UIView#>.leadingAnchor),
            <#T##UIView#>.trailingAnchor.constraint(equalTo: <#T##UIView#>.trailingAnchor),
            
            <#T##UIView#>.centerXAnchor.constraint(equalTo: <#T##UIView#>.centerXAnchor),
            <#T##UIView#>.centerYAnchor.constraint(equalTo: <#T##UIView#>.centerYAnchor),
            
            <#T##UIView#>.widthAnchor.constraint(equalToConstant: <#T##CGFloat#>),
            <#T##UIView#>.heightAnchor.constraint(equalToConstant: <#T##CGFloat#>),
        ])
        
    }
}

