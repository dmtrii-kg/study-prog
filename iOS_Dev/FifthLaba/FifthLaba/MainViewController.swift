//
//  MainViewController.swift
//  FifthLaba
//
//  Created by dmtrii on 28.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var winCounter = [WindowCounter]()
    
    @IBOutlet weak var task1: UIButton!
    @IBOutlet weak var task2: UIButton!
    @IBOutlet weak var task3: UIButton!
    @IBOutlet weak var task5: UIButton!
    @IBOutlet weak var task6: UIButton!
 
    var add0 : Int = 0
    var del0 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ViewController")
        print(add0)
        print(del0)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC1 = segue.destination as? FirstViewController {
            destinationVC1.add1 = add0 + 1
            destinationVC1.del1 = del0
        }
        if let destinationVC2 = segue.destination as? SecondViewController {
            destinationVC2.add2 = add0 + 1
            destinationVC2.del2 = del0
        }
        if let destinationVC3 = segue.destination as? ThirdViewController {
            destinationVC3.add3 = add0 + 1
            destinationVC3.del3 = del0
        }
        if let destinationVC4 = segue.destination as? FourthViewController {
            destinationVC4.add4 = add0 + 1
            destinationVC4.del4 = del0
        }
        if let destinationVC5 = segue.destination as? FifthViewController {
            destinationVC5.add5 = add0 + 1
            destinationVC5.del5 = del0
        }
    }
    
}

