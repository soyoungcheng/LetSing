//
//  RecordNavigationView.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/8.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import Foundation
import UIKit

class RecordNavigationView: UIView {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var titleLabel: UILabel!

    var btn = UIButton()

    override func awakeFromNib() {
        super.awakeFromNib()
        print("navi view")

    }
}
