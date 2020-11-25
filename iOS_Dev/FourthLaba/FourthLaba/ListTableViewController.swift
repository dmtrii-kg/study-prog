//
//  ListTableViewController.swift
//  FourthLaba
//
//  Created by dmtrii on 21.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var elements = [1]
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "elementsCellIdentifier", for: indexPath)
        cell.textLabel?.text = "\(elements[indexPath.row]) Элемент"

        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if elements.count > indexPath.row {
                elements.remove(at: indexPath.row)
                tableView.deleteRows(at:[indexPath],with: .fade)
        }
    }
    
    
    // MARK: - AddButton

    @IBAction func addTapped(_sender: UIBarButtonItem) {
        count += 1
        elements.append(count)
        // print(elements)
        tableView.reloadData()
    }
    
    
    // MARK: - Table view data source

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    */
    
}
