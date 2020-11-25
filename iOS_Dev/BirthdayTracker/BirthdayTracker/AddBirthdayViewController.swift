//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by dmtrii on 19/09/2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

protocol AddBirthdayViewControllerDelegate {
    
    func  addBirthdayViewController(_addBirthdayViewController: AddBirthdayViewController, DidAddBirthdayViewController: Birthday)
    
}

class AddBirthdayViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdatePicker: UIDatePicker!
    
    var delegate : AddBirthdayViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdatePicker.maximumDate = Date()
    }
    
    @IBAction func saveTapped(_sender: UIBarButtonItem) {
        // print("Нажата кнопка Save")
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        // print("Меня зовут \(firstName) \(lastName)")
        let birthdate = birthdatePicker.date
        // print("Мой день Рождения \(birthdate)")
        
        let newBirthday = Birthday(firstName:firstName, lastName:lastName, birthdate:birthdate)
        delegate?.addBirthdayViewController(_addBirthdayViewController: self, DidAddBirthdayViewController: newBirthday)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTapped(_sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}

