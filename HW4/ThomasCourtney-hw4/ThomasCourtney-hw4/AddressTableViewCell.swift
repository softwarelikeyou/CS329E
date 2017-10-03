//
//  AddressTableViewCell.swift
//  ThomasCourtney-hw4
//
//  Created by Courtney Thomas on 10/1/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit

class AddressTableViewCell: UITableViewCell {

    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func config(streetText: String) {
        streetLabel.text = streetText
    }
    func config(cityText: String) {
        cityLabel.text = cityText
    }
    func config(stateText: String) {
        stateLabel.text = stateText
    }
    func config(zipText: String) {
        zipLabel.text = zipText
    }

}
