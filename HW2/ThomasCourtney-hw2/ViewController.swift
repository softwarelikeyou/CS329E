//
//  ViewController.swift
//  ThomasCourtney-hw2
//
//  Created by Courtney Thomas on 9/15/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set each text field's delegate.
        // This tells iOS that this class has a method iOS can call
        // (textFieldShouldReturn) when it wants to dismiss the keyboard.
        txtField.delegate = self as! UITextFieldDelegate
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // This method is called when the user touches the Return key on the
    // keyboard. The 'textField' passed in is a pointer to the textField
    // the cursor was in at the time they touched the Return key on the
    // keyboard.
    //
    // From the Apple documentation: Asks the delegate if the text field
    // should process the pressing of the return button.
    //
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 'First Responder' is the same as 'input focus'.
        // We are removing input focus from the text field.
        textField.resignFirstResponder()
        return true
    }
    
    // Called when the user touches on the main view (outside the UITextField).
    //
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBAction func myButton(_ sender: Any) {
        let name = nameText.text
        let city = cityText.text
        if name?.isEmpty ?? true {
            messageLabel.text = "You must enter a value for *both* name and city!!"
        }
        if city?.isEmpty ?? true {
            messageLabel.text = "You must enter a value for *both* name and city!!"
        }
        else {
            messageLabel.text = name! + "-" + city!
        }
        
    
    }


}

