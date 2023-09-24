//
//  MainCellViewModel.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 24/9/23.
//

import Foundation

class MainCellViewModel {
    var name: String
    var email: String
    
    init(_ user: User) {
        self.name = user.username
        self.email = user.email
    }
}
