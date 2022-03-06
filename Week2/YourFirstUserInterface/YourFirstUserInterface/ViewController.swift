//
//  ViewController.swift
//  YourFirstUserInterface
//
//  Created by Yen Ju Lai on 2/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreView: UILabel!
    
    @IBOutlet weak var rightScoreView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        print(rightNumber)
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
    }
    

}

