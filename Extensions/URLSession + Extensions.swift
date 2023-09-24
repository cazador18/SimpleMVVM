//
//  URLSession + Extensions.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 17/9/23.
//

import Foundation

extension URLSession {
    typealias Handler = (Data?, URLResponse?, Error?)-> Void
    
    @discardableResult
    func request(_ endpoint: EndPoint, handler: @escaping Handler) -> URLSessionDataTask {
        let task = dataTask(with: endpoint.url, completionHandler: handler)
        task.resume()
        return task
    }
}
