//
//  ViewController.swift
//  CCViewDemo
//
//  Created by Sumit Ghosh on 05/10/18.
//  Copyright © 2018 Sumit Ghosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let collectionView = CollectionViewController.init(nibName:"CollectionViewController", bundle: nil)
        collectionView.view.frame = self.view.frame
        self.view.addSubview(collectionView.view)
        self.addChildViewController(collectionView)
        collectionView.didMove(toParentViewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

