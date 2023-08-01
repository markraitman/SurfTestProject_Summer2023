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
    
    // skillsView
    private let skillsView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()
    
    // mySkillsLabel
    private let mySkillsLabel: UILabel = {
        let label = UILabel()
        label.text = "Мои навыки"
        label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.layer.masksToBounds = true
        return label
    }()
    
    // editingButton
    private let editingButton: UIButton = {
        let button = UIButton()
        button.configuration = .plain()
        button.configuration?.cornerStyle = .medium
        button.configuration?.baseForegroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.configuration?.baseBackgroundColor = .clear
        button.configuration?.title = ""
        button.configuration?.titleAlignment = .center
        button.configuration?.titlePadding = 0
        button.configuration?.attributedTitle?.font = UIFont.boldSystemFont(ofSize: 20)
        button.configuration?.image = UIImage(systemName: "pencil.circle")
        button.configuration?.imagePadding = 0
        button.configuration?.imagePlacement = .leading
        
//        button.addTarget(self, action: #selector(goToNextScreen(_:)), for: .touchUpInside)
        return button
    }()
    
//    @objc private func goToNextScreen(_ sender: UIButton) {
//        let nextScreen = SecondScreen()
//        nextScreen.title = "Second Screen"
//        navigationController?.pushViewController(nextScreen, animated: true)
//    }
    
    // skillButton
    private let skillButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.configuration?.cornerStyle = .medium
        button.configuration?.baseForegroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.configuration?.baseBackgroundColor = #colorLiteral(red: 0.9529165626, green: 0.9527944922, blue: 0.9611051679, alpha: 1)
        button.configuration?.title = "MVI/MVVM"
        button.configuration?.titleAlignment = .center
        button.configuration?.attributedTitle?.font = UIFont.boldSystemFont(ofSize: 20)
        button.configuration?.image = UIImage(systemName: "xmark")
        button.configuration?.imagePadding = 10
        button.configuration?.imagePlacement = .trailing
        return button
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
        stackView.addArrangedSubview(skillsView)
        skillsView.addSubview(mySkillsLabel)
        skillsView.addSubview(editingButton)
        skillsView.addSubview(skillButton)
        
        /// TAMIC
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityTagImage.translatesAutoresizingMaskIntoConstraints = false
        skillsView.translatesAutoresizingMaskIntoConstraints = false
        mySkillsLabel.translatesAutoresizingMaskIntoConstraints = false
        editingButton.translatesAutoresizingMaskIntoConstraints = false
        skillButton.translatesAutoresizingMaskIntoConstraints = false
        
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
            
            skillsView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            skillsView.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 15),
            skillsView.heightAnchor.constraint(greaterThanOrEqualToConstant: 200),
            skillsView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
            skillsView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
            
            mySkillsLabel.topAnchor.constraint(equalTo: skillsView.topAnchor, constant: 15),
            mySkillsLabel.leftAnchor.constraint(equalTo: skillsView.leftAnchor, constant: 10),
            mySkillsLabel.widthAnchor.constraint(equalToConstant: 100),
            mySkillsLabel.heightAnchor.constraint(equalToConstant: 20),
            
            editingButton.topAnchor.constraint(equalTo: skillsView.topAnchor, constant: 15),
            editingButton.rightAnchor.constraint(equalTo: skillsView.rightAnchor, constant: -10),
            editingButton.widthAnchor.constraint(equalToConstant: 24),
            editingButton.heightAnchor.constraint(equalToConstant: 24),
            
            skillButton.topAnchor.constraint(equalTo: mySkillsLabel.topAnchor, constant: 25),
            skillButton.leftAnchor.constraint(equalTo: skillsView.leftAnchor, constant: 10),
            skillButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 50),
            skillButton.heightAnchor.constraint(equalToConstant: 50),
            
            
            
            
            //            <#T##UIView#>.centerXAnchor.constraint(equalTo: <#T##UIView#>.centerXAnchor),
            //            <#T##UIView#>.centerYAnchor.constraint(equalTo: <#T##UIView#>.centerYAnchor),
            //
            //            <#T##UIView#>.widthAnchor.constraint(equalToConstant: <#T##CGFloat#>),
            //            <#T##UIView#>.heightAnchor.constraint(equalToConstant: <#T##CGFloat#>),
        ])
        
    }
}

