//
//  ExtPickerView.swift
//  MiraclePills
//
//  Created by Douglas Spencer on 8/25/17.
//  Copyright © 2017 Douglas Spencer. All rights reserved.
//

import UIKit

extension MainVC: UIPickerViewDataSource, UIPickerViewDelegate {
    
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
}
