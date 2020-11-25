//
//  ContextMenuViewController.swift
//  multi-window
//
//  Created by dmtrii on 15.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class ContextMenuViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var textBox1: UITextField!
    @IBOutlet weak var dropDown1: UIPickerView!
    @IBOutlet weak var textBox2: UITextField!
    @IBOutlet weak var dropDown2: UIPickerView!
    
    var list = ["Первый", "Второй", "Третий"]
    var list1 = ["Первый", "Второй", "Третий"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTapGestureToHideKeyboard()
    }
    
    func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return list.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return list[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.textBox1.text = self.list[row]
        self.dropDown1.isHidden = true
        print("Выбран \(list[row]) подсписок первого списка")
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == self.textBox1 {
            self.dropDown1.isHidden = false
            textField.endEditing(true)
        }
    }
    
    public func numberOfComponents1(in pickerView: UIPickerView) -> Int{
        return 1
    }

    public func pickerView1(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return list1.count
    }
    
    func pickerView1(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.textBox2.text = self.list1[row]
        self.dropDown2.isHidden = true
        print("Выбран \(list1[row]) подсписок второго списка")
    }

    func textFieldDidBeginEditing1(_ textField: UITextField) {
        if textField == self.textBox2 {
            self.dropDown2.isHidden = false
            textField.endEditing(true)
        }
    }

}
