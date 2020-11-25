//
//  EditDateViewController.swift
//  multi-window
//
//  Created by dmtrii on 14.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class EditDateViewController: UIViewController {

    @IBOutlet weak var datePicker : UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toDCB") {
            let destinationVC: DateViewController = segue.destination as! DateViewController;
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = DateFormatter.Style.long
            destinationVC.passedStringFromDCA = dateFormatter.string(from: datePicker.date)
        }
    }
   
    @IBAction func saveButton (_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "toDCB", sender: sender)
    }

}
