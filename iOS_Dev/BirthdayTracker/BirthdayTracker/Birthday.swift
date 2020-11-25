//
//  Birthday.swift
//  BirthdayTracker
//
//  Created by dmtrii on 19/09/2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import Foundation

class Birthday {
    let firstName: String
    let lastName: String
    let birthdate: Date
    
    init(firstName: String, lastName: String, birthdate: Date) {
    
        self.firstName = firstName
        self.lastName = lastName
        self.birthdate = birthdate
        
    }
}
