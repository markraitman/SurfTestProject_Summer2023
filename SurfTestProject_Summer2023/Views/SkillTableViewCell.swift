//
//  SkillTableViewCell.swift
//  SurfTestProject_Summer2023
//
//  Created by Марк Райтман on 01.08.2023.
//

import UIKit

class SkillTableViewCell: UITableViewCell {
    
    // MARK: - UI Components
    // skillLabel
    let skillLabel: PaddedLabel = {
        let label = PaddedLabel()
        label.text = ""
        label.backgroundColor = #colorLiteral(red: 0.9529165626, green: 0.9527944922, blue: 0.9611051679, alpha: 1)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.lineBreakMode = .byTruncatingTail
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15
        label.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        return label
    }()
    
    // deleteButton
    let deleteButton: UIButton = {
        let button = UIButton(type: .system)
        button.configuration = .plain()
        button.configuration?.baseForegroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.configuration?.baseBackgroundColor = .clear
        button.configuration?.title = ""
        button.configuration?.image = UIImage(systemName: "xmark")
        button.configuration?.imagePadding = 0
        button.configuration?.imagePlacement = .leading
        return button
    }()
    
    
    // MARK: - UI Setup
    private func setupUI() {
        
        /// ADDING SUBVIEWS
        addSubview(skillLabel)
        skillLabel.addSubview(deleteButton)
        
        /// TAMIC
        skillLabel.translatesAutoresizingMaskIntoConstraints = false
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        
        /// SETUP CONSTRAINTS
        NSLayoutConstraint.activate([
            skillLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            skillLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            skillLabel.trailingAnchor.constraint(equalTo: deleteButton.leadingAnchor, constant: -5),
            
            deleteButton.centerYAnchor.constraint(equalTo: skillLabel.centerYAnchor),
            deleteButton.widthAnchor.constraint(equalToConstant: 10),
            deleteButton.heightAnchor.constraint(equalTo: deleteButton.widthAnchor),
        ])
        
    }
    
    // MARK: - Methods
    
    func configure(skill: String, deleteAction: (() -> Void)?) {
        skillLabel.text = skill
        
        deleteButton.addTarget(self, action: #selector(deleteButtonTapped), for: .touchUpInside)
    }
    
    @objc private func deleteButtonTapped() {
    }
}
