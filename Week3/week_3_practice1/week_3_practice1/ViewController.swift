//
//  ViewController.swift
//  week_3_practice1
//
//  Created by Yen Ju Lai on 3/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class page1_ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Page 1"
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // allow controller to pass data from page1 to page2
        if segue.identifier == "segue" {
            let destinationController = segue.destination as! page2_ViewController
            destinationController.alertMessage = textField.text!
        }
    }
    
}

class page2_ViewController: UIViewController {
    var alertMessage = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Page 2"
        
        // show alert
        let alert = UIAlertController(title: "輸入的內容", message: alertMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("確認", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }

}
