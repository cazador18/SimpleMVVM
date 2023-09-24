//
//  EndPoint.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 15/9/23.
//

import Foundation

struct EndPoint {
    var path: String
}

extension EndPoint{
    var url:URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "jsonplaceholder.typicode.com"
        components.path = "/" + path
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        return url
    }
}

extension EndPoint {
    static var users: Self {
        EndPoint(path: "users")
    }
}
