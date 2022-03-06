//
//  ViewController.swift
//  Week2-class
//
//  Created by Yen Ju Lai on 2/23/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickToChangeColor(_ sender: UIButton) {
        let color = changeColor()
        view.backgroundColor = color
    }
    
    func changeColor() -> UIColor {
        let colors : [UIColor] = [.red, .blue, .brown, .green, .gray, .purple, .yellow]
        
        let randomIndex = Int.random(in: 0..< colors.count)
        return colors[randomIndex]
    }
    
}


