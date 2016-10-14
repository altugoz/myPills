//
//  ViewController.swift
//  myMiraclePills
//
//  Created by altug ozgercek on 14/10/2016.
//  Copyright © 2016 Altug Ozgercek. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var countrLabel: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var sucessImage: UIImageView!
    @IBOutlet weak var miraclePills: UILabel!
    @IBOutlet weak var miraclePillImage: UIImageView!
    @IBOutlet weak var dollarBill: UILabel!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var enterYourNameLabel: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var stateText: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!

    @IBOutlet weak var justACode: UILabel!
    
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    
    let states = ["Paris", "London", "Munich", "Rome", "Miami", "New York", "Ibiza"]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buyNowButton(_ sender: AnyObject) {
        sucessImage.isHidden = false
        countrLabel.isHidden = true
        miraclePills.isHidden = true
        justACode.isHidden = true
    }
    
    
    @IBAction func pickerButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countrLabel.isHidden = true
        zipCodeLabel.isHidden = true
        

    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
   }
}

