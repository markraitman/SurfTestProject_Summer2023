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
    // scroll view
    private let scrollView = UIScrollView()
    
    // stack view
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        return stack
    }()
    
    // profileView
    private let profileView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9529165626, green: 0.9527944922, blue: 0.9611051679, alpha: 1)
        return view
    }()
    
    // profileImageView
    private let profileImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "person_1")
        image.tintColor = .clear
        image.layer.cornerRadius = 15
        image.layer.masksToBounds = true
        return image
    }()
    
    // nameLabel
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Иванов Иван Иванович"
        label.backgroundColor = .clear
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.numberOfLines = 2
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.layer.masksToBounds = true
        return label
    }()
    
    // infoLabel
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Middle iOS-разработчик, опыт более 2-х лет, люблю сериалы в жанре научной фантастики, например, сериалы по вселенной Звёздных войн"
        label.backgroundColor = .clear
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    // cityLabel
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.text = "Санкт-Петербург"
        label.backgroundColor = .clear
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.numberOfLines = 1
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .left
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    // cityTagImage
    private let cityTagImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(systemName: "mappin.and.ellipse")
        image.tintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return image
    }()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9529165626, green: 0.9527944922, blue: 0.9611051679, alpha: 1)
        navigationItem.title = "Профиль"
        
        setupUI()
    }
    
    // MARK: - Methods
    
    
}

extension MainViewController {
    // MARK: - UI Setup
    func setupUI() {
        
        /// ADDING SUBVIEWS
        view?.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(profileView)
        profileView.addSubview(profileImageView)
        profileView.addSubview(nameLabel)
        profileView.addSubview(infoLabel)
        profileView.addSubview(cityLabel)
        profileView.addSubview(cityTagImage)

        
        /// TAMIC
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityTagImage.translatesAutoresizingMaskIntoConstraints = false
        
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
            
            profileView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            profileView.heightAnchor.constraint(equalToConstant: 387),
            profileView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
            profileView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
            
            profileImageView.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 40),
            profileImageView.widthAnchor.constraint(equalToConstant: 120),
            profileImageView.heightAnchor.constraint(equalToConstant: 120),
            
            nameLabel.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
            nameLabel.heightAnchor.constraint(equalToConstant: 64),
            nameLabel.widthAnchor.constraint(equalToConstant: 149),
            
            infoLabel.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            infoLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            infoLabel.heightAnchor.constraint(equalToConstant: 35),
            infoLabel.widthAnchor.constraint(equalToConstant: 273),
            
            cityLabel.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            cityLabel.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 2),
            cityLabel.heightAnchor.constraint(equalToConstant: 35),
            cityLabel.widthAnchor.constraint(equalToConstant: 100),
            
            cityTagImage.centerYAnchor.constraint(equalTo: cityLabel.centerYAnchor),
            cityTagImage.rightAnchor.constraint(equalTo: cityLabel.leftAnchor, constant: -2),
            cityTagImage.widthAnchor.constraint(equalToConstant: 14),
            cityTagImage.heightAnchor.constraint(equalToConstant: 14),
            
            
            //            <#T##UIView#>.centerXAnchor.constraint(equalTo: <#T##UIView#>.centerXAnchor),
            //            <#T##UIView#>.centerYAnchor.constraint(equalTo: <#T##UIView#>.centerYAnchor),
            //
            //            <#T##UIView#>.widthAnchor.constraint(equalToConstant: <#T##CGFloat#>),
            //            <#T##UIView#>.heightAnchor.constraint(equalToConstant: <#T##CGFloat#>),
        ])
        
    }
}

