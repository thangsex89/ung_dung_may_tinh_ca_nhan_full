//
//  number_button.swift
//  ung_dung_may_tinh_ca_nhan
//
//  Created by Thang on 12/14/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class number_button: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    required init?(coder aDecoder: NSCoder) { // hàm này sẽ được gọi khi bất kì đối tượng view nào trên storyboard hoặc ... được khởi tạo
        super.init(coder: aDecoder)
        configbutton()
    }
    func configbutton() -> Void {
        
//        if (tag == 101)
//        {
//            
//            backgroundColor = UIColor.init(red: 245/255, green: 165/255, blue: 34/255, alpha: 1) // set background color cho doi tuong
//        }else
        
            backgroundColor = UIColor.init(red: 255/255, green: 50/255, blue: 1/255, alpha: 1)
        
        layer.cornerRadius = 8.0 // set viền cong cho đối tượng
        titleLabel?.font  = UIFont.systemFont(ofSize: 30) // set font size cho title của button
        self.setTitleColor(UIColor.white, for: .normal) // set color cho title của button
    }
}



