//
//  EditTimeViewController.swift
//  multi-window
//
//  Created by dmtrii on 14.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class EditTimeViewController: UIViewController {

     @IBOutlet weak var datePicker : UIDatePicker!
     
     override func viewDidLoad() {
         super.viewDidLoad()

     }
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if (segue.identifier == "toTCB") {
             let destinationVC: TimeViewController = segue.destination as! TimeViewController;
             let dateFormatter = DateFormatter()
             dateFormatter.timeStyle = DateFormatter.Style.short
             destinationVC.passedStringFromTCA = dateFormatter.string(from: datePicker.date)
         }
     }
    
     @IBAction func saveButton (_ sender: UIBarButtonItem) {
         self.performSegue(withIdentifier: "toTCB", sender: sender)
     }

}
