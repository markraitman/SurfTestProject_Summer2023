//
//  ViewController.swift
//  SurfTestProject_Summer2023
//
//  Created by Марк Райтман on 01.08.2023.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Properties
    private var skills: [String] = ["MVVM", "MVC", "VIPER"]
    
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
    
    // skillsTableView
    let skillsTableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
//    @objc private func goToNextScreen(_ sender: UIButton) {
//        let nextScreen = SecondScreen()
//        nextScreen.title = "Second Screen"
//        navigationController?.pushViewController(nextScreen, animated: true)
//    }
    
//    // mySkillsStack view
//    private let mySkillsStack: UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        stack.distribution = .fill
//        stack.spacing = 5
//        return stack
//    }()
    
//    // skillButton
//    private let skillButton: UIButton = {
//        let button = UIButton()
//        button.configuration = .filled()
//        button.configuration?.cornerStyle = .large
//        button.configuration?.baseForegroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        button.configuration?.baseBackgroundColor = #colorLiteral(red: 0.9529165626, green: 0.9527944922, blue: 0.9611051679, alpha: 1)
//        button.configuration?.title = "MVI/MVVM"
//        button.configuration?.titleAlignment = .center
//        button.configuration?.attributedTitle?.font = UIFont.systemFont(ofSize: 20)
//        button.configuration?.image = UIImage(systemName: "xmark")
//        button.configuration?.imagePadding = 8
//        button.configuration?.imagePlacement = .trailing
//        return button
//    }()
    
//    // addSkillsButton
//    private let addSkillsButton: UIButton = {
//        let button = UIButton()
//        button.configuration = .filled()
//        button.configuration?.cornerStyle = .large
//        button.configuration?.baseForegroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        button.configuration?.baseBackgroundColor = #colorLiteral(red: 0.9529165626, green: 0.9527944922, blue: 0.9611051679, alpha: 1)
//        button.configuration?.title = "+"
//        button.configuration?.titleAlignment = .center
//        button.configuration?.attributedTitle?.font = UIFont.systemFont(ofSize: 20)
//        return button
//    }()
    
    // aboutYSView
    private let aboutYSView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()
    
    // aboutLabel
    private let aboutLabel: UILabel = {
        let label = UILabel()
        label.text = "О себе"
        label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        return label
    }()
    
    // aboutPersonInfoLabel
    private let aboutPersonInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Опытный инженер-программист, обладающий навыками разработки масштабируемых и поддерживаемых систем"
        label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9529165626, green: 0.9527944922, blue: 0.9611051679, alpha: 1)
        navigationItem.title = "Профиль"
        
//        /// TABLE VIEW
//        tableView.register(SkillTableViewCell.self, forCellReuseIdentifier: "SkillCell")
//        tableView.delegate = self
//        tableView.dataSource = self
        
        setupUI()
    }
    
    // MARK: - Methods
    
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return skills.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SkillCell", for: indexPath) as! SkillTableViewCell
        let skill = skills[indexPath.row]
        cell.configure(skill: skill) {
            
            self.skills.remove(at: indexPath.row)
            tableView.reloadData()
        }
        return cell
    }
    
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
        skillsView.addSubview(skillsTableView)
//        skillsView.addSubview(mySkillsStack)
//        mySkillsStack.addArrangedSubview(skillButton)
        stackView.addArrangedSubview(aboutYSView)
        aboutYSView.addSubview(aboutLabel)
        aboutYSView.addSubview(aboutPersonInfoLabel)
        
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
        skillsTableView.translatesAutoresizingMaskIntoConstraints = false
//        mySkillsStack.translatesAutoresizingMaskIntoConstraints = false
//        skillButton.translatesAutoresizingMaskIntoConstraints = false
        aboutYSView.translatesAutoresizingMaskIntoConstraints = false
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutPersonInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
            profileView.heightAnchor.constraint(equalToConstant: 390),
            profileView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
            profileView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
            
            profileImageView.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 15),
            profileImageView.widthAnchor.constraint(equalToConstant: 120),
            profileImageView.heightAnchor.constraint(equalToConstant: 120),
            
            nameLabel.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 5),
            nameLabel.heightAnchor.constraint(equalToConstant: 65),
            nameLabel.widthAnchor.constraint(equalToConstant: 150),
            
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
            skillsView.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
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
            
            skillsTableView.topAnchor.constraint(equalTo: mySkillsLabel.bottomAnchor, constant: 5),
            skillsTableView.bottomAnchor.constraint(equalTo: skillsView.bottomAnchor),
            skillsTableView.leftAnchor.constraint(equalTo: skillsView.leftAnchor, constant: 5),
            skillsTableView.rightAnchor.constraint(equalTo: skillsView.rightAnchor, constant: -5),
//
//            skillButton.topAnchor.constraint(equalTo: mySkillsStack.topAnchor, constant: 3),
//            skillButton.leftAnchor.constraint(equalTo: mySkillsStack.leftAnchor, constant: 10),
//            skillButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 50),
//            skillButton.heightAnchor.constraint(equalToConstant: 50),
            
            aboutYSView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            aboutYSView.topAnchor.constraint(equalTo: skillsView.bottomAnchor, constant: 0),
            aboutYSView.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
            aboutYSView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
            aboutYSView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
            
            aboutLabel.topAnchor.constraint(equalTo: aboutYSView.topAnchor, constant: 15),
            aboutLabel.leftAnchor.constraint(equalTo: aboutYSView.leftAnchor, constant: 10),
            aboutLabel.widthAnchor.constraint(equalToConstant: 100),
            aboutLabel.heightAnchor.constraint(equalToConstant: 20),
            
            aboutPersonInfoLabel.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 2),
            aboutPersonInfoLabel.bottomAnchor.constraint(equalTo: aboutYSView.bottomAnchor, constant: -5),
            aboutPersonInfoLabel.leftAnchor.constraint(equalTo: aboutYSView.leftAnchor, constant: 10),
            aboutPersonInfoLabel.rightAnchor.constraint(equalTo: aboutYSView.rightAnchor, constant: -10),
            
            
            
            
            //            <#T##UIView#>.centerXAnchor.constraint(equalTo: <#T##UIView#>.centerXAnchor),
            //            <#T##UIView#>.centerYAnchor.constraint(equalTo: <#T##UIView#>.centerYAnchor),
            //
            //            <#T##UIView#>.widthAnchor.constraint(equalToConstant: <#T##CGFloat#>),
            //            <#T##UIView#>.heightAnchor.constraint(equalToConstant: <#T##CGFloat#>),
        ])
        
    }
}

