//
//  NetworkRequest.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 17/9/23.
//

import Foundation

class NetworkRequest {
    static let shared = NetworkRequest()
    
    private init() {}
    
    func getData(completionHandler: @escaping (Result<Data, NetworkError>) -> Void) {
        URLSession.shared.request(.users) { data, _, error in
            DispatchQueue.main.async{
                if error != nil {
                    completionHandler(.failure(.URLError))
                } else {
                    guard let data else {return}
                    completionHandler(.success(data))
                }
            }
        }
    }
}
