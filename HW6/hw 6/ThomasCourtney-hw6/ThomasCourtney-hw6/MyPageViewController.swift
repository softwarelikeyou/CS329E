//
//  MyPageViewController.swift
//  ThomasCourtney-hw6
//
//  Created by Courtney Thomas on 10/16/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit

let wonders = ["wonders1", "wonders2", "wonders3", "wonders4", "wonders5", "wonders6", "wonders7"]

class MyPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        let viewController = MyViewController()
        viewController.wonder = wonders.first
        
        let viewControllers = [viewController]
        setViewControllers(viewControllers, direction: .Forward, animated: true, completion: nil)
    }
    
    
}
