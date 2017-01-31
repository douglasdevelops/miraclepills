//
//  ViewController.swift
//  MiraclePills
//
//  Created by Douglas Spencer on 9/4/16.
//  Copyright © 2016 Douglas Spencer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var Country: UILabel!
    @IBOutlet weak var CountryTextBox: UITextField!
    @IBOutlet weak var btnBuyNow: UIButton!
    @IBOutlet weak var imgSuccess: UIImageView!
    @IBOutlet weak var imgPill: UIImageView!
    @IBOutlet weak var lblMiraclePills: UILabel!
    @IBOutlet weak var lblPillCost: UILabel!
    @IBOutlet weak var lblDivider: UIView!
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var lblStreetAddress: UILabel!
    @IBOutlet weak var txtStreetAddress: UITextField!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var txtCountry: UITextField!
    @IBOutlet weak var lblState: UILabel!
    @IBOutlet weak var btnStartOver: UIButton!
    
    let states = ["Vermont","New Hampshire", "Texas","California","Maine","Florida"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.statePicker.dataSource = self
        statePicker.delegate = self
        btnStartOver.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func PickStateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        Country.isHidden = true
        CountryTextBox.isHidden = true
        btnBuyNow.isHidden = true
        }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        CountryTextBox.isHidden = false
        Country.isHidden = false
        btnBuyNow.isHidden = false
        
    }
    
    @IBAction func btnBuyNowPressed(_ sender: AnyObject) {
        statePicker.isHidden = true
        statePickerButton.isHidden = true
        Country.isHidden = true
        CountryTextBox.isHidden = true
        btnBuyNow.isHidden = true
        imgSuccess.isHidden = false
        imgPill.isHidden = true
        lblMiraclePills.isHidden = true
        lblPillCost.isHidden = true
        lblDivider.isHidden = true
        lblFullName.isHidden = true;
        lblStreetAddress.isHidden = true
        txtFullName.isHidden = true
        txtStreetAddress.isHidden = true
        lblCity.isHidden = true
        txtCity.isHidden = true
        lblCountry.isHidden = true
        txtCountry.isHidden = true
        lblState.isHidden = true
        btnStartOver.isHidden = false
    }
    
    @IBAction func btnStartOverPressed(_ sender: AnyObject) {
        statePicker.isHidden = true
        statePickerButton.isHidden = false
        Country.isHidden = false
        CountryTextBox.isHidden = false
        btnBuyNow.isHidden = false
        imgSuccess.isHidden = true
        imgPill.isHidden = false
        lblMiraclePills.isHidden = false
        lblPillCost.isHidden = false
        lblDivider.isHidden = false
        lblFullName.isHidden = false;
        lblStreetAddress.isHidden = false
        txtFullName.isHidden = false
        txtStreetAddress.isHidden = false
        lblCity.isHidden = false
        txtCity.isHidden = false
        lblCountry.isHidden = false
        txtCountry.isHidden = false
        lblState.isHidden = false
        btnStartOver.isHidden = true

    }
    
    
    }

