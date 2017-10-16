//
//  ViewController.swift
//  MyWonders
//
//  Created by Steve Thomas on 10/14/17.
//  Copyright © 2017 University of Texas - Austin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
        wonder = "wonders1"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var wonder: String? {
        didSet {
            imageView.image = UIImage(named: wonder!)
        }
    }
}

