//
//  SecondViewController.swift
//  CountryApp
//
//  Created by MAC2 on 05/05/1945 Saka.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    var sttpkr = UIPickerView()
    var state = [""]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.sttpkr.dataSource = self
        self.sttpkr.delegate = self
        state = ["Andhra Pradesh",
                 "Arunachal Pradesh",
                 "Assam",
                 "Bihar",
                 "Chhattisgarh",
                 "Goa",
                 "Gujarat",
                 "Haryana",
                 "Himachal Pradesh",
                 "Jammu and Kashmir",
                 "Jharkhand",
                 "Karnataka",
                 "Kerala",
                 "Madhya Pradesh",
                 "Maharashtra",
                 "Manipur",
                 "Meghalaya",
                 "Mizoram",
                 "Nagaland",
                 "Odisha",
                 "Punjab",
                 "Rajasthan",
                 "Sikkim",
                 "Tamil Nadu",
                 "Telangana",
                 "Tripura",
                 "Uttarakhand",
                 "Uttar Pradesh",
                 "West Bengal",
                 "Andaman and Nicobar Islands",
                 "Chandigarh",
                 "Dadra and Nagar Haveli",
                 "Daman and Diu",
                 "Delhi",
                 "Lakshadweep",
                 "Puducherry"]
        txt1.inputView = sttpkr
        
        // Do any additional setup after loading the view.
    }
    

    

}

extension SecondViewController:UIPickerViewDataSource,UIPickerViewDelegate {
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
        txt1.text = state[row]
        txt1.isUserInteractionEnabled = false
        view.endEditing(true)
    }
    
    
}
