//
//  ViewController.swift
//  SOCollectionViewDemo
//
//  Created by Hitesh on 8/22/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "CollectionViewController"
        
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 90)
        self.collectionView?.collectionViewLayout = layout
    }
    
    
    //MARK: UICollectionViewDataSource
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath)
        configureCell(cell, forItemAtIndexPath: indexPath)
        
        cell.layer.borderWidth=1.0;
        cell.layer.borderColor=UIColor.blueColor().CGColor;
        
        return cell
    }
    
    func configureCell(cell: UICollectionViewCell, forItemAtIndexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.blackColor()
        //3
        let imgView = UIImageView(frame: CGRectMake(0, 0, layout.itemSize.width, layout.itemSize.height))
        imgView.contentMode = .ScaleAspectFit
        if forItemAtIndexPath.row%3 == 0 {
            imgView.image = UIImage(named: "img3.jpg")
        } else if forItemAtIndexPath.row%2 == 0 {
            imgView.image = UIImage(named: "img2.jpg")
        } else {
            imgView.image = UIImage(named: "img1.jpg")
        }
        cell.addSubview(imgView)
        
    }
    
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        let view =  collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "collectionCell", forIndexPath: indexPath) as UICollectionReusableView
        return view
    }
    
    
    
    //MARK:- UICollectionViewDelegateFlowLayout

//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) ->
//        CGFloat {
//            return 0.0
//    }
//    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
//        return 0.0
//    }
    

//    //Layout will be manage by given below delegate too.
//    func collectionView(collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                               insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//        return UIEdgeInsetsMake(20, 10, 10, 10); //UIEdgeInsetsMake(topMargin, left, bottom, right);
//    }
    
    //MARK: UICollectionViewDelegate
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

