//
//  MenuCollectionViewCell.swift
//  yixinSpark
//
//  Created by Mr.LuDashi on 2017/6/26.
//  Copyright © 2017年 yixin.com. All rights reserved.
//

import UIKit

class CETabDisplayViewCell: UICollectionViewCell {
    private var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.orange.cgColor
        self.layer.cornerRadius = self.frame.size.height / 2
        self.backgroundColor = UIColor.white
        addTitleLabel()
    }
    
    func setTitle(text: String) {
        self.titleLabel.text = text
    }
    
    private func addTitleLabel() {
        titleLabel = UILabel(frame: CGRect(origin: CGPoint.zero, size: self.frame.size))
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.orange
        titleLabel.font = UIFont.systemFont(ofSize: 11)
        self.addSubview(titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
