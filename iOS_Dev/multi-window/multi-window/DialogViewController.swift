//
//  DialogViewController.swift
//  multi-window
//
//  Created by dmtrii on 05.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class DialogViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var passedStringFromVCA: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textView.text = passedStringFromVCA;
    }

}
