//
//  ViewController.swift
//  Counter
//
//  Created by dmtrii on 19/09/2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var variable = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = "\(variable)"
    }
    
    @IBAction func addOnePressed(_sender: UIButton) {
        variable += 1
        self.label.text = "\(variable)"
    }

}
