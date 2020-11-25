//
//  interfaceViewController.swift
//  interfaceElements
//
//  Created by dmtrii on 07/10/2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class interfaceViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var knopka: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var dropDown: UIPickerView!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var sliderValue: UILabel!
    
    var variable = 0
    var list = ["Первый", "Второй", "Третий"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label1.text = "\(variable)"
        
        datePicker.maximumDate = Date()
        
        addTapGestureToHideKeyboard()
    }

    func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapGesture() {
        textField.resignFirstResponder()
    }
    
    @IBAction func alwaysPressedButton(_ sender: UIButton) {
        if true {
            knopka.isEnabled = false
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.label2.text = "Нажата"
    }

    
    @IBAction func buttonReleased(_ sender: UIButton) {
        self.label2.text = "Отпущена"
    }
    
    @IBAction func addOnePressed(_ sender: UIButton) {
        variable += 1
        self.label1.text = "\(variable)"
    }
    
    @IBAction func datePickerChangeAction(_ sender: UIDatePicker) {
        let dateChange = Calendar.current.dateComponents([.year, .month, .day], from: sender.date)
        if let day = dateChange.day, let month = dateChange.month, let year = dateChange.year {
            print("Дата: \(day)-\(month)-\(year)")
        }
    }
    
    @IBAction func timePickerChangeAction(_ sender: UIDatePicker) {
        let timeChange = Calendar.current.dateComponents([.hour, .minute], from: sender.date)
        if let hour = timeChange.hour, let minute = timeChange.minute {
            print("Время: \(hour):\(minute)")
        }
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

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

        self.textBox.text = self.list[row]
        self.dropDown.isHidden = true
        print("\(list[row])")

    }

    func textFieldDidBeginEditing(_ textField: UITextField) {

        if textField == self.textBox {
            self.dropDown.isHidden = false
            //if you dont want the users to se the keyboard type:

            textField.endEditing(true)
        }

    }
    
    @IBAction func switchLabelFunc (_ sender: UISwitch) {
        if sender.isOn {
            switchLabel.text = "Включён"
            print("Включён")
        } else {
            switchLabel.text = "Выключен"
            print("Выключён")
        }
    }
    
    @IBAction func valueSliderBar (_ sender: UISlider) {
        let value = Int(sender.value)
        sliderValue.text = "Текущее значение: \(value)"
        print("Текущее значение: \(value)")
    }

}
