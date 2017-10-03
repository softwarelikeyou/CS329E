//
//  Person.swift
//  ThomasCourtney-hw4
//
//  Created by Courtney Thomas on 10/1/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import Foundation

class Person {
    var firstName: String = ""
    var lastName: String = ""
    var age: Int = 0
    var street: String = ""
    var city: String = ""
    var state: String = ""
    var zip: Int = 0
    
    init(firstName: String, lastName: String, age: Int, street: String, city: String, state: String, zip: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.street = street
        self.city = city
        self.state = state
        self.zip = zip
    }
    
}
