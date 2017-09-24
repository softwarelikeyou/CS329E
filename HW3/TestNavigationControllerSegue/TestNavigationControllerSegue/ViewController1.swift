//
//  ViewController1.swift
//  TestNavigationControllerSegue
//
//  Created by Robert Seitsinger on 2/5/17.
//  Copyright © 2017 cs378. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // You can set the navigation bar title this way.
        self.title = "Test Segue"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // By the time we get here, the destination view controller has already been
        // instantiated. That allows us to get access to public properties/methods before
        // navigating to the destination view controller.
        //
        // The segue.identifier is set in the Attributes Inspector for a given segue.
        if segue.identifier == "Detail1" {
            if let destinationVC = segue.destination as? ViewController2 {
                destinationVC.message = "This is a message for controller 2"
            }
        } else if segue.identifier == "Detail2" {
            if let destinationVC = segue.destination as? ViewController3 {
                destinationVC.message = "This is a message for controller 3"
            }
        }
    }

}
