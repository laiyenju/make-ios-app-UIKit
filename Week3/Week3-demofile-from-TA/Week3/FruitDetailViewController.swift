//
//  FruitDetailViewController.swift
//  Week3
//
//  Created by Steven C on 2022/1/26.
//

import UIKit

class FruitDetailViewController: UIViewController {

    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var fruitImage: UIImage?
    var fruitDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fruitImageView.image = self.fruitImage
        self.descriptionLabel.text = self.fruitDescription
    }
}
