//
//  ViewController.swift
//  CETabDisplay
//
//  Created by Mr.LuDashi on 2017/7/3.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tagView: CETabDisplayView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        weak var weak_self = self
        tagView = CETabDisplayView(frame:  CGRect(origin: CGPoint(x: 15, y: 50), size: CGSize(width: self.view.frame.width - 30, height: self.view.frame.height)), dataSource: { () -> Array<CETagContentModel> in
            return (weak_self?.createTestDataSource())!
        })
        self.view.addSubview(tagView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createTestDataSource() -> Array<CETagContentModel>{
        var dataSource = Array<CETagContentModel>()
        for _ in 0..<100 {
            var title = "字"
            
            for _ in 0..<arc4random()%6 {
                title = title + "字"
            }
            
            dataSource.append(CETagContentModel(title: title))
        }
        return dataSource
    }



}

