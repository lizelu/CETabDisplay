//
//  MenuCategoryView.swift
//  yixinSpark
//
//  Created by Mr.LuDashi on 2017/6/27.
//  Copyright © 2017年 yixin.com. All rights reserved.
//

import UIKit
private let reuseIdentifier = "CETabDisplayViewCell"
class CETabDisplayView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var collectionView: UICollectionView!
    var dataSource: Array<MenuContentModel> = []
    
    
    override init(frame: CGRect = CGRect.zero) {
        super.init(frame: frame)
        self.addCollectionView()
        self.createTestDataSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCollectionView() {
        self.collectionView = UICollectionView(frame: CGRect(origin: CGPoint.zero, size: self.frame.size), collectionViewLayout: UICollectionViewFlowLayout())
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.backgroundColor = UIColor.white
        self.collectionView.register(CETabDisplayViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.addSubview(collectionView)
    }
    
    func createTestDataSource() {
        for i in 0..<5 {
            var title = "四个的字"
            
            if i % 3 == 0 {
                title = "俩字"
            }
            if i % 3 == 1 {
                title = "三个字"
            }
            self.dataSource.append(MenuContentModel(title: title))
        }
        self.collectionView.reloadData()
    }

    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CETabDisplayViewCell
        cell.setTitle(text: self.dataSource[indexPath.row].title)
        return cell
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.dataSource[indexPath.row].titleWidth, height: 17)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
}
