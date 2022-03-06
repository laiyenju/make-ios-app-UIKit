//
//  FruitsViewController.swift
//  Week3
//
//  Created by Steven C on 2022/1/26.
//

import UIKit

class FruitsViewController: UIViewController {

    // MARK: Properties
    let avocadoInfo = "Sometimes called an avocado pear, this fruit is often mistakenly described as a vegetable because we eat it in salads. Avocados are at their best when they are ripe. They’re really easy to prepare – simply cut one in half, remove the stone and eat with a little salad dressing or chopped into a salad. Avocados are a good source of essential fats (yes, the good ones) and are one of the few fruits that contain fat."
    
    let bananaInfo = "A great snack in a handy yellow skin! Bananas are a good source of energy and contain lots of vitamins and minerals, especially potassium. Potassium is important for the health of cells, nerves and muscles, and helps to lower blood pressure. Bananas grow in hanging clusters, sometimes called hands, in tropical regions. You can eat them raw, baked, dried or in a smoothie. Or make a simple ice cream by freezing banana slices then blending them!"
    
    let cherryInfo = "Cherries grow from stalks and a tree can produce fruit for as long as 100 years! Sweet varieties such as the Bing cherry are nicest on their own or in a fruit salad. Sour cherries like Morello are tastier cooked."
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destinationVC = segue.destination as? FruitDetailViewController
        else {
            print("ERROR: segue.destination is not FruitDetailViewController")
            return
        }
        
        if segue.identifier == "avocadoSegue" {
            destinationVC.fruitImage = UIImage(named: "avocado")
            destinationVC.fruitDescription = self.avocadoInfo
            
        } else if segue.identifier == "bananaSegue" {
            destinationVC.fruitImage = UIImage(named: "banana")
            destinationVC.fruitDescription = self.bananaInfo
            
        } else if segue.identifier == "cherrySegue" {
            destinationVC.fruitImage = UIImage(named: "cherry")
            destinationVC.fruitDescription = self.cherryInfo
        }
    }
}
