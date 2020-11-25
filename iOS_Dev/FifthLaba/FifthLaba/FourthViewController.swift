//
//  FourthViewController.swift
//  FifthLaba
//
//  Created by dmtrii on 28.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    var ad = 1
    
    var add4 = 0
    var del4 = 0
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC: MainViewController = segue.destination as! MainViewController
        destinationVC.add0 = add4
        destinationVC.del0 = del4 + 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("FourthViewController")
        print(add4)
        print(del4)

    }
    
    var count = 0
    var value = 0
    var timer = Timer()

    @IBOutlet weak var st: UIButton!
    @IBOutlet weak var sec: UILabel!
    @IBOutlet weak var min: UILabel!
    @IBOutlet weak var hour: UILabel!

    @IBAction func cancelTapped(_sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func start(_ sender: UIButton) {
        
        if (value % 2 == 0){
            value = value + 1
            st.setTitle("Пауза", for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FourthViewController.counter), userInfo: nil, repeats: true)
        } else {
            value = value + 1
            st.setTitle("Старт", for: .normal)
            timer.invalidate()
        }
    }
    
    @objc func counter() {
        count += 1
        if count > 9 && count < 60 {
            sec.text = "\(count)"
        } else if count < 10 {
            sec.text = "0\(count)"
        } else if count > 59 && count < 3600 {
            
            let val1 = count % 60
            if val1 > 9 {
                sec.text = "\(val1)"
            } else if val1 < 10 {
                sec.text = "0\(val1)"
            }
            
            
            let val :Float = Float(count / 60)
            let integer = floor(val)
            // print(integer)
            
            if Int(integer) > 9 {
                min.text = "\(Int(integer))"
            } else if Int(integer) < 10 {
                min.text = "0\(Int(integer))"
            }
        } else if count > 3599 {
            
            let val1 = count % 60
            if val1 > 9 {
                sec.text = "\(val1)"
            } else if val1 < 10 {
                sec.text = "0\(val1)"
            }
            
            let val :Float = Float(count / 60)
            let integer = floor(val)
            let integer1 = Int(integer) % 60
            
            if integer1 > 9 {
                min.text = "\(integer1)"
            } else if integer1 < 10 {
                min.text = "0\(integer1)"
            }
            
            let val2 :Float = Float(count / 3600)
            let integer2 = floor(val2)
            
            if Int(integer2) > 9 {
                hour.text = "\(Int(integer2))"
            } else if Int(integer2) < 10 {
                hour.text = "0\(Int(integer2))"
            }
        }
    }
    
    @IBAction func reset(_ sender: UIButton) {
        timer.invalidate()
        count = 0
        sec.text = "00"
        min.text = "00"
        hour.text = "00"
    }

    
}
