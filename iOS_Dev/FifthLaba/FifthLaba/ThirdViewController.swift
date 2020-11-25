//
//  ThirdViewController.swift
//  FifthLaba
//
//  Created by dmtrii on 28.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var ad = 1
    
    var add3 = 0
    var del3 = 0
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC: MainViewController = segue.destination as! MainViewController
        destinationVC.add0 = add3
        destinationVC.del0 = del3 + 1
    }

    @IBOutlet weak var string: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("ThirdViewController")
        print(add3)
        print(del3)

        string.backgroundColor = UIColor.white
        string.frame = CGRect(x: 131, y: 122, width: 153, height: 50)
        self.view.addSubview(string)

    }
    
    @IBAction func cancelTapped(_sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func down(_ sender: UIButton) {
        movementDown()
    }

    @IBAction func up(_ sender: UIButton) {
        movementUp()
    }
    
    func movementDown() {
        UIView.animate(withDuration: 3.0, animations: {
            self.string.textColor = UIColor.blue
            self.string.backgroundColor = UIColor.white
            self.string.frame = CGRect(x: 131, y: 500, width: 153, height: 50)
            self.rotateView(targetView: self.string)
            })
    }
    
    func movementUp() {
        UIView.animate(withDuration: 3.0, animations: {
            self.string.textColor = UIColor.red
            self.string.backgroundColor = UIColor.white
            self.string.frame = CGRect(x: 131, y: 122, width: 153, height: 50)
            self.rotateView(targetView: self.string)
            })
    }

    func rotateView(targetView: UIView) {
        UIView.animate(withDuration: 1.0, animations: {
            targetView.transform = targetView.transform.rotated(by: CGFloat(M_PI))
            })
    }


}
