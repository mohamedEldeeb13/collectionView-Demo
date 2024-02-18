//
//  ViewController.swift
//  collectionView-Demo
//
//  Created by Mohamed Abd Elhakam on 18/02/2024.
//

import UIKit
import Gemini

class ViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: GeminiCollectionView!
    
    let photos = ["1","2","3","4","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //MARK: 1
        collectionView.gemini
            .rollRotationAnimation()
            .degree(45)
            .rollEffect(.rollUp)
        
        //MARK: 2
//        collectionView.gemini
//            .scaleAnimation()
//            .scale(0.75)
//            .scaleEffect(.scaleUp)
        
        //MARK: 3
//        collectionView.gemini
//            .circleRotationAnimation()
//            .radius(450) // The radius of the circle
//            .rotateDirection(.clockwise) // Direction of rotation.
//            .itemRotationEnabled(true) // Whether the item rotates or not.
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.setUp(imageName: photos[indexPath.row])
        self.collectionView.animateCell(cell)
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.collectionView.animateVisibleCells()
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if let cell = cell as? MyCollectionViewCell {
            self.collectionView.animateCell(cell)
        }
    }
    
    
}

