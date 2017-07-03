//
//  MenuContentModel.swift
//  yixinSpark
//
//  Created by Mr.LuDashi on 2017/7/3.
//  Copyright © 2017年 yixin.com. All rights reserved.
//

import UIKit

class MenuContentModel {
    var title: String
    var titleWidth: CGFloat {
        get {
            let titleStr: NSString = title as NSString
            let rect = titleStr.boundingRect(with: CGSize(width: 0, height: 30), options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 13.0)], context: nil)
            return rect.width + 8;
        }
    }
    init(title: String) {
        self.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
