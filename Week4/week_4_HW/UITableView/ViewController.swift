//
//  ViewController.swift
//  UITableView
//
//  Created by Yen Ju Lai on 3/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    var shoppingList = [
        "Apple",
        "Beef",
        "Milk",
        "Tissue",
        "Trash bag",
        "Toothpaste",
        "Shampoo"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //specify data source
        table.delegate = self
        table.dataSource = self
    }


}

// handle interaction
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me!")
    }
    
    // 設定左滑後刪除
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            shoppingList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
}

// provide data into cell
extension ViewController: UITableViewDataSource {
    
    // set the number of sections in a table
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // set the name of section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "List"
    }
    
    // set the number of rows in a table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    // set the template for each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = shoppingList[indexPath.row]
        
        return cell
    }
}

