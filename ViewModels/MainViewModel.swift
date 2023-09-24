//
//  MainViewModel.swift
//  SimpleMVVM
//
//  Created by Erzhan Kasymov on 14/9/23.
//

import Foundation

class MainViewModel {
    
    var isLoading: Obesrvable<Bool> = Obesrvable(false)
    var cellDataSource: Obesrvable<[MainCellViewModel]> = Obesrvable(nil)
    var dataSource: [User]?
    
    func numberOfSection()-> Int {
        1
    }
    
    func numberofRows(_ section: Int) -> Int {
        dataSource?.count ?? 0
    }
    
    func getUsers() {
        
        isLoading.value = true
        
        
        
        
        
        NetworkDataFetch.shared.fetchUsers { [weak self] users, error in
            guard let self else {return}
            self.isLoading.value = false
             if let users {
                 self.dataSource = users
                 self.mapCellData()
            }
        }
    }
    
    func mapCellData() {
        cellDataSource.value = dataSource?.compactMap({ MainCellViewModel($0) })
    }
}
