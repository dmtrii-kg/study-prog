//
//  FifthViewController.swift
//  FifthLaba
//
//  Created by dmtrii on 28.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    var ad = 1
    
    var add5 = 0
    var del5 = 0
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC: MainViewController = segue.destination as! MainViewController
        destinationVC.add0 = add5
        destinationVC.del0 = del5 + 1
    }
    
    @IBOutlet weak var add: UILabel!
    @IBOutlet weak var del: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        add.text = String(add5)
        del.text = String(del5)
        
        print("FifthViewController")
        print(add5)
        print(del5)

    }
    
    @IBAction func cancelTapped(_sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
