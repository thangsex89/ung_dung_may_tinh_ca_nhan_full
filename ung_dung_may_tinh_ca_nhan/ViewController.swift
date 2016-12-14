//
//  ViewController.swift
//  ung_dung_may_tinh_ca_nhan
//
//  Created by Thang on 12/13/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ct_distance_between_inputtextfieldandresultlabel: NSLayoutConstraint!
    
    @IBOutlet weak var ct_distance_between_resultlabelandmidleview: NSLayoutConstraint!
    
    @IBOutlet weak var tf_input: UITextField!
    
    @IBOutlet weak var label_result: UILabel!
    // mark variables
    var is_tapping_number : Bool = false
    var is_endopertation : Bool = true
    var first_number : Double = 0
    var second_number : Double = 0
    var operation : String = ""
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
        tf_input.isUserInteractionEnabled = false
    }
    override func updateViewConstraints() {
        super.updateViewConstraints()
       //updatecontrains()
    }
    func updatecontrains() -> Void {
      let scale = UIScreen.main.bounds.size.height / 667
        ct_distance_between_inputtextfieldandresultlabel.constant = UIScreen.main.bounds.size.height > 480  ? ct_distance_between_inputtextfieldandresultlabel.constant * scale : ct_distance_between_inputtextfieldandresultlabel.constant * 0.1
        ct_distance_between_resultlabelandmidleview.constant = UIScreen.main.bounds.size.height > 480 ? ct_distance_between_resultlabelandmidleview.constant * scale :
        ct_distance_between_resultlabelandmidleview.constant * 0.1
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // outlet data

    @IBAction func btn_action_number(_ sender: UIButton) {
        
        let number = sender.currentTitle
        if (is_tapping_number == true)
        {
            tf_input.text = tf_input.text! + number!
        }else
        {
            tf_input.text = number
            is_tapping_number = true
        }
        
    }
    @IBAction func btn_action_operator(_ sender: UIButton) {
        
        operation = sender.currentTitle!
        if let input_operation = Double (tf_input.text!)
        {
            if(is_endopertation == true)
            {
                first_number = input_operation
                is_endopertation = false
            }
            
        }else
        {
            print("nhap so truoc khi tinh toan")
        }
        is_tapping_number = false
        if( operation == "%" )
        {
            btn_action_equal(sender)
        }else if (operation == "+/-")
        {
            btn_action_equal(sender)
        }
        
    }

    @IBAction func btn_action_equal(_ sender: UIButton) {
        is_tapping_number = false
        var result : Double = 0
        if let  realsecondnumber = Double(tf_input.text!)
        {
            second_number =  realsecondnumber
        }
        switch operation {
        case "+" :
          result = first_number + second_number
        case "-" :
            result = first_number - second_number
        case "*" :
            result = first_number * second_number
        case "/" :
            result = first_number / second_number
        case "%" :
            result = first_number / 100
        case "+/-" :
            
            if (first_number < 0)
            {
                first_number = fabs(first_number)
                result = first_number
            }else
            {
                first_number = first_number * -1
                result = first_number
            }
            if (first_number == 0)
            {
                result = 0
            }
           // tf_input.text = String(result)
            tf_input.text = "\(result)"
                
            
        default:
            print ("error")
        }
        label_result.text = "\(result)"
    }
    
    @IBAction func btn_action_AC(_ sender: UIButton) {
        first_number = 0
        second_number = 0
        tf_input.text = ""
        label_result.text = "0"
        is_endopertation = true
    }
    
    @IBAction func btn_action_point(_ sender: UIButton) {
        let point = sender.currentTitle
        if (checkpoint() <= 1)
        {
        if (is_tapping_number == true)
        {
            tf_input.text = tf_input.text! + point!
        }else
        {
            tf_input.text = point
            is_tapping_number = true
        }

    }else
        {
            label_result.text = "error"
        }
    }
    func checkpoint() -> Int {
//        let s = "hello Swift Swift and Swift"
//        let tok =  s.componentsSeparatedByString("Swift")
//        println(tok.count-1)
        let a  = tf_input.text?.components(separatedBy: ".")
       
        return ((a?.count)!)
    }
    
}//endl

