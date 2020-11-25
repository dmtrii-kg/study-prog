//
//  ViewController.swift
//  multi-window
//
//  Created by dmtrii on 18.10.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var delButton: UIButton!
    @IBOutlet weak var addPageButton: UIBarButtonItem!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // нужна для скрытия клавиатуры
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      textField.resignFirstResponder()
      return true
    }
    
    @IBAction func cancelTapped(_sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addPage (_ sender: UIButton) {
        addPageButton.isEnabled = true
    }
    
    @IBAction func delPage (_ sender: UIButton) {
        addPageButton.isEnabled = false
    }
    
    @IBAction func websiteButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.apple.com/ru/") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
        // https://avatars.mds.yandex.net/get-pdb/1751182/6609ce7a-b7a3-4147-97a4-b64da8c66cca/s1200
    }
    
}
