//
//  Users.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 17/9/23.
//

import Foundation

struct User: Codable {
    
    let name: String
    let username:String
    let email: String
    let address: Address
    let phone: String
}

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
}
