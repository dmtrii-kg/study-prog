//
//  CalcViewController.swift
//  Kvadraty
//
//  Created by dmtrii on 27/09/2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var term2: UITextField!
    @IBOutlet var term1: UITextField!
    
    @IBAction func addOnePressed(_sender: UIButton) {
        let number1 = term1.text ?? ""
        let number2 = term2.text ?? ""
        let sum = Int(number1)! + Int(number2)!
        print("Result: \(sum)")
        self.label.text = "Result: \(sum)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}
