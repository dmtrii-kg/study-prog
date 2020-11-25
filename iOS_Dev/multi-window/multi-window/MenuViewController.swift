//
//  MenuViewController.swift
//  multi-window
//
//  Created by dmtrii on 15.11.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var menuTableView: UITableView!
    
    let myTitle = ["One", "Two", "Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuTableView.delegate = self
        menuTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuTableViewCell
        cell.labelText.text = myTitle[indexPath.row]
        return cell
    }

}
