//
//  SecondViewController.swift
//  PADC_Week1_assignment
//
//  Created by SC414 on 8/2/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    static let identifier = "SecondViewController"
    
    var dob : String = ""
    var selectedGenderIndex : Int = 0
    
    
    @IBOutlet weak var lblDob: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDob.text=dob
        
        switch selectedGenderIndex {
        case 0:
            lblGender.text = "Male"
            break
        case 1:
            lblGender.text = "Female"
            break
        default:
            break
        }

    
    }
    


}
