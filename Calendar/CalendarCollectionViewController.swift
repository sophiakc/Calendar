//
//  CalendarCollectionViewController.swift
//  Calendar
//
//  Created by Sophia KC on 30/11/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class CalendarCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configuration of the datasource and delegate of the collection view
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Set the number of items in your collection view.
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Access properties and methods in your Custom Cell Swift file
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        // Do any custom modifications to your cell, referencing the outlets you defined in the Custom cell file.
        //        cell.backgroundColor = UIColor.whiteColor()
        //        cell.label.text = "labelDay \(indexPath.item)"
        cell.labelDay.text = "THU"
        cell.labelDate.text = "10"
        cell.viewWordCount.image = #imageLiteral(resourceName: "ellipse-lg")
        cell.viewTimeCount.image = #imageLiteral(resourceName: "ellipse-sm")
        
        return cell
        
        
    }
    
    
}




















