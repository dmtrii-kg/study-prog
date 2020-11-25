//
//  TimeViewController.swift
//  multi-window
//
//  Created by dmtrii on 14.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var passedStringFromTCA: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textView.text = passedStringFromTCA;
    }

}
