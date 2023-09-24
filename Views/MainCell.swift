//
//  MainCell.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 24/9/23.
//

import UIKit

class MainCell: UITableViewCell {
    
    static var indentifier: String {
        "MainCell"
    }
    
    private let nameLabel = UILabel()
    private let emailLabel = UILabel()
    private var labelsStackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        nameLabel.font = .systemFont(ofSize: 16)
        emailLabel.font = .systemFont(ofSize: 14)
        emailLabel.textColor = .gray
        
        labelsStackView  = UIStackView(arrangedSubviews: [nameLabel, emailLabel])
        labelsStackView.axis = .vertical
        labelsStackView.spacing = 2
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(labelsStackView)
        
        NSLayoutConstraint.activate([
        
            labelsStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            labelsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
    }
    
    func setupCell(viewModel: MainCellViewModel) {
        nameLabel.text = viewModel.name
        emailLabel.text = viewModel.email
    }
}
