//
//  ThirdViewController.swift
//  CountryApp
//
//  Created by MAC2 on 05/05/1945 Saka.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var txt2: UITextField!
    var sttpkr = UIPickerView()
    var state = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sttpkr.dataSource = self
        self.sttpkr.delegate = self
        state = ["Alaska",
            "Alabama",
            "Arkansas",
            "American Samoa",
            "Arizona",
            "California",
            "Colorado",
            "Connecticut",
            "District of Columbia",
            "Delaware",
            "Florida",
            "Georgia",
            "Guam",
            "Hawaii",
            "Iowa",
            "Idaho",
            "Illinois",
            "Indiana",
            "Kansas",
            "Kentucky",
            "Louisiana",
            "Massachusetts",
            "Maryland",
            "Maine",
            "Michigan",
            "Minnesota",
            "Missouri",
            "Mississippi",
            "Montana",
            "North Carolina",
            "North Dakota",
            "Nebraska",
            "New Hampshire",
            "New Jersey",
            "New Mexico",
            "Nevada",
            "New York",
            "Ohio",
            "Oklahoma",
            "Oregon",
            "Pennsylvania",
            "Puerto Rico",
            "Rhode Island",
            "South Carolina",
            "South Dakota",
            "Tennessee",
            "Texas",
            "Utah",
            "Virginia",
            "Virgin Islands",
            "Vermont",
            "Washington",
            "Wisconsin",
            "West Virginia",
            "Wyoming"]
        txt2.inputView = sttpkr

        // Do any additional setup after loading the view.
    }
    

   

}
extension ThirdViewController:UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt2.text = state[row]
        txt2.isUserInteractionEnabled = false
        view.endEditing(true)
    }
    
    
}
