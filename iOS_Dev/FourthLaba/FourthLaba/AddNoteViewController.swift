//
//  AddNoteViewController.swift
//  FourthLaba
//
//  Created by dmtrii on 21.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit
import CoreData

class AddNoteViewController: UIViewController {

    @IBOutlet var noteTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveTapped(_sender: UIBarButtonItem) {
        let noteText = noteTextField.text ?? ""
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newNotes = Note(context: context)
        newNotes.note = noteText
        newNotes.noteID = UUID().uuidString
        
        if let uniqueID = newNotes.noteID {
            print("noteID: \(uniqueID)")
        }
        
        do{
            try context.save()
        } catch let error {
            print("Не удалось сохранить из-за ошибки \(error).")
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTapped(_sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

}
