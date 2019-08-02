//
//  ViewController.swift
//  PADC_Week1_assignment
//
//  Created by SC414 on 8/2/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfDob: UITextField!
    
    var datepicker : UIDatePicker?
   
    
    var genderIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datepicker = UIDatePicker()
        datepicker?.datePickerMode = .date
        
        datepicker?.addTarget(self, action: #selector(selectedDatePicker(datePicker:)), for: .valueChanged)
        tfDob.inputView = datepicker
        
    }
    
    @objc func selectedDatePicker(datePicker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        tfDob.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }

    @IBAction func segGender(_ sender: UISegmentedControl) {
        
        genderIndex = sender.selectedSegmentIndex
        
    }
    
    @IBAction func btnRegister(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: SecondViewController.identifier) as! SecondViewController
        
        vc.dob = tfDob.text ?? ""
        vc.selectedGenderIndex = genderIndex
        
        self.present(vc, animated: true, completion: nil)
        
    }
}

