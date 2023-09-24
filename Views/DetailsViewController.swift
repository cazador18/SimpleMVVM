//
//  DetailsViewController.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 24/9/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    private let nameLabel = UILabel()
    private let usernameLabel = UILabel()
    private let emailLabel = UILabel()
    private let phoneLabel = UILabel()
    private let streetLabel = UILabel()
    private let suiteLabel = UILabel()
    private let cityLabel = UILabel()
    
    private var labelsStackView = UIStackView()
    
    let detailsViewModel: DetailsViewModel
    
    init(_ detailsViewModel: DetailsViewModel){
        self.detailsViewModel = detailsViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        displayUserInfo()
    }
    
    private func setupViews() {
        title = "User Details"
        view.backgroundColor = .white
        
        labelsStackView = UIStackView(arrangedSubviews: [nameLabel,usernameLabel,emailLabel, phoneLabel, streetLabel, suiteLabel, cityLabel])
        
        labelsStackView.axis = .vertical
        labelsStackView.spacing = 2
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(labelsStackView)
    }
    
    private func displayUserInfo() {
        nameLabel.text = detailsViewModel.name
        usernameLabel.text = detailsViewModel.username
        emailLabel.text = detailsViewModel.email
        phoneLabel.text = detailsViewModel.phone
        
        streetLabel.text = detailsViewModel.street
        suiteLabel.text = detailsViewModel.suite
        cityLabel.text = detailsViewModel.city
    }
}

//MARK: Contstraints
extension DetailsViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            labelsStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            labelsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
}
