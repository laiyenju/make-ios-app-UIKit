//
//  ViewController.swift
//  week_3_practice2
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

class ApageViewController: UIViewController {

    @IBOutlet weak var textFieldA: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // pass fieldtext to page B
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let destinationController = segue.destination as! BpageViewController
            destinationController.resultA = textFieldA.text!
        }
    }

}

class BpageViewController: UIViewController {
    var resultA = String()
    
    @IBOutlet weak var textFieldB: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // pass fieldtext to result page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let destinationController = segue.destination as! ResultViewController
            destinationController.resultA = resultA
            destinationController.resultB = textFieldB.text!
        }
    }


}

class ResultViewController: UIViewController {
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelWinner: UILabel!

    var resultA = String()
    var resultB = String()
    var resultWinner = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // match text in their textfield
        labelA.text = "A: \(resultA)"
        labelB.text = "B: \(resultB)"
        
        // 型別轉換 String to Int，如果 String 中內有無法成功轉換的內容，Int 結果是 0
        let numberA = Int(resultA) ?? 0
        let numberB = Int(resultB) ?? 0
        
        // 判斷輸出結果
        if (numberA > numberB) {
            resultWinner = "A 勝"
        } else if (numberA < numberB) {
            resultWinner = "B 勝"
        } else {
            resultWinner = "平手"
        }
        return labelWinner.text = resultWinner

    }

    

}

