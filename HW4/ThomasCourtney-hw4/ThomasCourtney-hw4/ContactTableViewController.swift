//
//  ContactTableViewController.swift
//  ThomasCourtney-hw4
//
//  Created by Courtney Thomas on 10/1/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createDataModel()
        self.navigationItem.title = "People List"
        self.tableView.rowHeight = 50.0

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count * 2
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
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> (UITableViewCell)
    {
        if indexPath.row % 2 == 0 {
            let row = indexPath.row
            let cell = tableView.dequeueReusableCell(withIdentifier: "nameid", for: indexPath) as! NameTableViewCell
            cell.config(fNameText: people[row/2].firstName)
            cell.config(lNameText: people[row/2].lastName)
            cell.backgroundColor = UIColor.white
            cell.showFullButton.tag = row/2
            return cell
        }
        else {
            let row = indexPath.row
            let cell = tableView.dequeueReusableCell(withIdentifier: "addid", for: indexPath) as! AddressTableViewCell
            cell.config(streetText: people[row/2].street)
            cell.config(cityText: people[row/2].city)
            cell.config(stateText: people[row/2].state)
            cell.config(zipText: String(describing: people[row/2].zip))
            cell.backgroundColor = UIColor.lightGray
            return cell
        }
    }
}
