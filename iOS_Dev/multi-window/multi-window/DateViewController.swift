//
//  DateViewController.swift
//  multi-window
//
//  Created by dmtrii on 14.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var passedStringFromDCA: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textView.text = passedStringFromDCA;
    }

}
