//
//  MyPageViewController.swift
//  MyWonders
//
//  Created by Steve Thomas on 10/14/17.
//  Copyright © 2017 University of Texas - Austin. All rights reserved.
//

import UIKit

class MyPageViewController: UIPageViewController {

    let wonders = ["wonders1", "wonders2", "wonders2", "wonders4", "wonders5", "wonders6", "wonders7"]

    override func viewDidLoad() {
        super.viewDidLoad()

        let viewController = ViewController()
        viewController.wonder = wonders.first
        
        let viewControllers = [viewController]
        setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
