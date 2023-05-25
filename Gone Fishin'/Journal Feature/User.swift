//
//  User.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import Foundation

class User: ObservableObject {
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    @Published var savedName = UserDefaults.standard.string(forKey: "Name") ?? ""
}
