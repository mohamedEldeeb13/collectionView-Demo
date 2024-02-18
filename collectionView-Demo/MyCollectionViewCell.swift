//
//  MyCollectionViewCell.swift
//  collectionView-Demo
//
//  Created by Mohamed Abd Elhakam on 18/02/2024.
//

import UIKit
import Gemini

class MyCollectionViewCell: GeminiCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func setUp(imageName : String) {
        self.imageView.image = UIImage(named: imageName)
    }
    
}
