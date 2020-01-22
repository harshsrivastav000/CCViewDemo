//
//  CollectionViewCell.swift
//  CCViewDemo
//
//  Created by Sumit Ghosh on 05/10/18.
//  Copyright © 2018 Sumit Ghosh. All rights reserved.
//

import UIKit
import CCView

class CollectionViewCell: CCCollectionViewCell {
    @IBOutlet weak var cellBackground: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomDetailsView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.assignValue(CCCellBackgroundView: cellBackground, upperView: topView, lowerView: bottomView, lowerdetailsView: bottomDetailsView)
    }
    
    override func defaultLayoutForClosedCell(lowerDetailsView:UIView,lowerView:UIView) -> Void {
        super.defaultLayoutForClosedCell(lowerDetailsView:lowerDetailsView,lowerView:lowerView)
        self.lowerDetailsView.isHidden = true
        self.lowerView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        self.layoutIfNeeded()
    }
    
    
    override func animateCloseCell(lowerDetailsView:UIView,lowerView:UIView,animationDuration:Double) -> Void {
        super.animateCloseCell(lowerDetailsView:lowerDetailsView,lowerView:lowerView,animationDuration:animationDuration)
        UIView.animate(withDuration: animationDuration) {
            self.lowerDetailsView.isHidden = true
            self.lowerView.transform = CGAffineTransform(scaleX: 0.3,y: 0.3)
            self.layoutIfNeeded()
        }
    }
    
    override func animateCellOpen(lowerDetailsView:UIView,lowerView:UIView,animationDuration:Double) -> Void {
        super.animateCellOpen(lowerDetailsView:lowerDetailsView,lowerView:lowerView,animationDuration:animationDuration)
        UIView.animate(withDuration: animationDuration) {
            self.lowerView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.lowerDetailsView.isHidden = false
            self.layoutIfNeeded()
        }
    }

}
