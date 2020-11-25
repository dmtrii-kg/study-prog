//
//  SwipeMenuViewController.swift
//  multi-window
//
//  Created by dmtrii on 15.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class SwipeMenuViewController: UIViewController {

    @IBOutlet weak var menuBarButtonItem:  UIBarButtonItem!
    // Переход на меню
    var menuVC: MenuViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //AddressZayvki()
        menuVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as? MenuViewController
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeRight.direction = .right
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeLeft.direction = .left
        
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeLeft)
        
    }
    @objc func handleSwipe(_ gesture: UISwipeGestureRecognizer) {
        switch gesture.direction {
        case UISwipeGestureRecognizer.Direction.right:
            print("Right")
            showMenu()
        case UISwipeGestureRecognizer.Direction.left:
            print("Left")
            hideMenu()
        default: break
        }
    }
    
    @IBAction func menuBarButtonItem(_ sender: UIBarButtonItem) {
        if AppDelegate.isMenuVC {
            showMenu()
        } else {
            hideMenu()
        }
    }
    
    // Функция открытия меню
    func showMenu() {
        UIView.animate(withDuration: 0.3) {
            self.menuVC.view.frame = CGRect(x: 0, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.addChild(self.menuVC)
            self.view.addSubview(self.menuVC.view)
            AppDelegate.isMenuVC = false
        }
    }
    // Функция закрытия меню
    func hideMenu() {
        UIView.animate(withDuration: 0.3, animations: {
            self.menuVC.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 60, width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            
        })  { (finished) in
            self.menuVC.view.removeFromSuperview()
            AppDelegate.isMenuVC = true
        }
    }

}
