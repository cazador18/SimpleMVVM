//
//  Obesrvable.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 21/9/23.
//

import Foundation

class Obesrvable<T> {
    
    var value: T? {
        didSet {
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }
    
    init(_ value: T? ) {
        self.value = value
    }
    
    private var listener: ((T?)-> Void)?
    
    func bind(_ listener: @escaping ((T?)-> Void)) {
        listener(value)
        self.listener = listener
    }
}
