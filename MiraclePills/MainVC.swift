//
//  ViewController.swift
//  MiraclePills
//
//  Created by Douglas Spencer on 9/4/16.
//  Copyright © 2016 Douglas Spencer. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    // MARK: - IBOutlet
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
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.statePicker.dataSource = self
        statePicker.delegate = self
        btnStartOver.isHidden = true
        
    }
    
    // MARK: - IBActions
    @IBAction func PickStateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        btnBuyNow.isHidden = true
    }
    
    @IBAction func btnBuyNowPressed(_ sender: AnyObject) {
        SetupUIAfterPurchase()
        AnimateSuccessButton()
    }
    
    @IBAction func btnStartOverPressed(_ sender: AnyObject) {
        ResetUIElementsToDefault()
    }
    
    // MARK: - User Functions
    func SetupUIAfterPurchase() {
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
    
    func AnimateSuccessButton() {
        UIView.animate(withDuration: 0.5) {
            self.imgSuccess.alpha = 1.0
        }
    }
    
    func ResetUIElementsToDefault() {
        statePicker.isHidden = true
        statePickerButton.isHidden = false
        statePicker.reloadAllComponents()
        
        Country.isHidden = false
        CountryTextBox.isHidden = false
        
        imgSuccess.isHidden = true
        imgPill.isHidden = false
        
        lblMiraclePills.isHidden = false
        lblPillCost.isHidden = false
        lblDivider.isHidden = false
        lblFullName.isHidden = false;
        lblStreetAddress.isHidden = false
        lblCity.isHidden = false
        lblCountry.isHidden = false
        lblState.isHidden = false
        
        txtFullName.isHidden = false
        txtStreetAddress.isHidden = false
        txtCity.isHidden = false
        txtCountry.isHidden = false
        
        btnStartOver.isHidden = true
        btnBuyNow.isHidden = false
    }
}

