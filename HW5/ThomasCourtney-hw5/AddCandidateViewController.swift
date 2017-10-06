//
//  AddCandidateViewController.swift
//  ThomasCourtney-hw5
//
//  Created by Courtney Thomas on 10/4/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit
import CoreData

class AddCandidateViewController: UIViewController {

    var candidates: [NSManagedObject] = []
    
    @IBOutlet weak var candidateSavedLabel: UILabel!
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var state: UITextField!
    
    @IBOutlet weak var party: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save(_ sender: UIButton) {
        if firstName.text!.isEmpty || lastName.text!.isEmpty || state.text!.isEmpty {
            var alert: UIAlertController?
            alert = UIAlertController(title: "Required fields", message: "You must enter a value for all fields.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                return
            })
            alert!.addAction(action)
            present(alert!, animated: true, completion: nil)
            return
        }
        
        let segment :String
        if party.selectedSegmentIndex == 0 {
            segment = "Democrat"
        }
        else {
            segment = "Republican"
        }

        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        // Get a context of manged objects
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        // cast an entity as managed object of Candidate
        let entity =
            NSEntityDescription.entity(forEntityName: "Candidate",
                                       in: managedContext)!
        
        let candidate = NSManagedObject(entity: entity,
                                        insertInto: managedContext)
        
        // populdate the entity
        candidate.setValue(firstName.text, forKey: "firstName")
        candidate.setValue(lastName.text, forKey: "lastName")
        candidate.setValue(state.text, forKey: "state")
        candidate.setValue(segment, forKey: "party")
        
        // save the managed object
        do {
            try managedContext.save()
            // Append candidate to table view list
            candidates.append(candidate)
            // Show the label "Candidate Saved!"
            candidateSavedLabel.isHidden = false
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }

}
