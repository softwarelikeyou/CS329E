//
//  MyViewController.swift
//  ThomasCourtney-hw6
//
//  Created by Courtney Thomas on 10/16/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var wonder: String? {
        didSet {
            imageView?.image = UIImage(named: wonder!)
        }
    }

}
