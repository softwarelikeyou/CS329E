//
//  NameTableViewCell.swift
//  ThomasCourtney-hw4
//
//  Created by Courtney Thomas on 10/1/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var showFullButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        createDataModel()
        showFullButton.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func config(fNameText: String) {
        firstName.text = fNameText
    }
    func config(lNameText: String) {
        lastName.text = lNameText
    }
    
    private var people = [Person]()
    private func createDataModel() {
        let person1 = Person(firstName: "Joe", lastName: "Johnson", age: 35, street: "1 Main Street", city: "Austin", state: "TX", zip:8128)
        let person2 = Person(firstName: "Sam", lastName: "Smith", age: 27, street: "2 Main Street", city: "Marble Falls", state: "TX", zip: 78228)
        let person3 = Person(firstName: "Sue", lastName: "Jefferson", age: 52, street: "3 Main Street", city: "Houston", state: "TX", zip: 78328)
        let person4 = Person(firstName: "Zoey", lastName: "Zimmerman", age: 17, street: "4 Main Street", city: "San Antonio", state: "TX", zip: 78428)
        let person5 = Person(firstName: "Alan", lastName: "Albright", age: 83, street: "5 Main Street", city: "Dallas", state: "TX", zip: 78528)
        let person6 = Person(firstName: "Chris", lastName: "Chambers", age: 33, street: "6 Main Street", city: "Round Rock", state: "TX", zip: 78628)
        let person7 = Person(firstName: "Danny", lastName: "Donaldson", age: 6, street: "7 Main Street", city: "Cedar Parks", state: "TX", zip: 78728)
        let person8 = Person(firstName: "Eli", lastName: "Edgarton", age: 10, street: "8 Main Street", city: "Leander", state: "TX", zip: 78828)
        let person9 = Person(firstName: "Frank", lastName: "Farmer", age: 100, street: "9 Main Street", city: "Webster", state: "TX", zip: 78928)
        
        
        people = [person1, person2, person3, person4, person5, person6, person7, person8, person9]
        
    }
    
    func buttonAction(sender:UIButton!) {
        let alertView = UIAlertView();
        alertView.addButton(withTitle: "OK")
        alertView.title = "Person";
        let first = people[showFullButton.tag].firstName
        let last = people[showFullButton.tag].lastName
        let age = people[showFullButton.tag].age
        alertView.message = first + " " + last + " " + String(age)
        alertView.show();
        print(showFullButton.tag)
    }
}
