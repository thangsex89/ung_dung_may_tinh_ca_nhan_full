//
//  gradient_view.swift
//  ung_dung_may_tinh_ca_nhan
//
//  Created by Thang on 12/14/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class gradient_view: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
      if (tag == 101)
      {
        backgroundColor = UIColor.init(red: 49/255, green: 58/255, blue: 75/255, alpha: 1)
      }else
      {
        creat_gradient()
        }
    }
    func creat_gradient() -> Void {
      let bg_gradient =  CAGradientLayer()
        bg_gradient.frame = self.frame
        bg_gradient.colors = [UIColor.init(red: 57/255, green: 120/255, blue: 27/255, alpha: 1).cgColor,UIColor.init(red: 77/255, green: 188/255, blue: 201/255, alpha: 1).cgColor ]
        let startpoint = CGPoint.init(x: 0, y: 0)
        let endpoint = CGPoint.init(x:0.5, y: 0.8)
        bg_gradient.startPoint = startpoint
        bg_gradient.endPoint = endpoint
        self.layer.insertSublayer(bg_gradient, at: 0)
    }
    
}
