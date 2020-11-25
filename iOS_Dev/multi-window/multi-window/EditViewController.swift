//
//  EditViewController.swift
//  multi-window
//
//  Created by dmtrii on 05.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toVCB") {
            let destinationVC: DialogViewController = segue.destination as! DialogViewController;
            destinationVC.passedStringFromVCA = textField.text
        }
    }
    
    @IBAction func saveButton (_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "toVCB", sender: sender)
    }

}
