//
//  CandidateInfoViewController.swift
//  ThomasCourtney-hw5
//
//  Created by Courtney Thomas on 10/7/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit
import CoreData

class CandidateInfoViewController: UIViewController {
    var candidate: NSManagedObject? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text =  candidate?.value(forKey: "firstName") as? String
        lastName.text =  candidate?.value(forKey: "lastName") as? String
        state.text =  candidate?.value(forKey: "state") as? String
        party.text =  candidate?.value(forKey: "party") as? String

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var party: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
