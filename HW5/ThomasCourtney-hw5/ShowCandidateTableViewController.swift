//
//  ShowCandidateTableViewController.swift
//  ThomasCourtney-hw5
//
//  Created by Courtney Thomas on 10/4/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit
import CoreData

class ShowCandidateTableViewController: UITableViewController {

    var candidates: [NSManagedObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        //title = "Show Candidates"
        //tableView.register(UITableViewCell.self,
                           //forCellReuseIdentifier: "Cell")
    }

    // MARK: - Table view data source
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //1
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        //2
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Candidate")
        
        //3
        do {
            candidates = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return candidates.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let candidate = candidates[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = candidate.value(forKey: "firstName") as? String
        cell.detailTextLabel?.text = candidate.value(forKeyPath: "party") as? String
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
