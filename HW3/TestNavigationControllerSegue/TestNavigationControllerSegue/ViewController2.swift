//
//  ViewController2.swift
//  TestNavigationControllerSegue
//
//  Created by Robert Seitsinger on 2/5/17.
//  Copyright © 2017 cs378. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    
    // This public property is set in prepare(for segue:)
    var message:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the navigation bar title.
        self.title = "Detail 1"
        
        // Modify the label with the value the message property was set to in prepare(for segue:)
        lblMessage.text = message
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Hello")
    }
    
    
}
