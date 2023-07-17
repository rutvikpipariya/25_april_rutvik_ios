//
//  ViewController.swift
//  dateComparison
//
//  Created by JADEJA PARIKSHITSINH on 17/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var compareButton: UIButton!
    @IBOutlet weak var resultTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func compareButtonTapped(_ sender: UIButton) {
        let selectedDate = datePicker.date
        let currentDate = Date()
        
        let comparisonResult = currentDate.compare(selectedDate)
        
        if comparisonResult == .orderedAscending {
            // Selected date is in the future compared to the current date
            resultTextField.text = "Selected date is in the future."
        } else if comparisonResult == .orderedDescending {
            // Selected date is in the past compared to the current date
            resultTextField.text = "Selected date is in the past."
        } else {
            // Selected date is the same as the current date
            resultTextField.text = "Selected date is the same as the current date."
        }
    }

}

/*
 import UIKit

 class ViewController: UIViewController {
     @IBOutlet weak var datePicker: UIDatePicker!
     @IBOutlet weak var compareButton: UIButton!
     @IBOutlet weak var resultTextField: UITextField!
     
     override func viewDidLoad() {
         super.viewDidLoad()
     }
     
     @IBAction func compareButtonTapped(_ sender: UIButton) {
         let selectedDate = datePicker.date
         let currentDate = Date()
         
         let comparisonResult = currentDate.compare(selectedDate)
         
         if comparisonResult == .orderedAscending {
             // Selected date is in the future compared to the current date
             resultTextField.text = "Selected date is in the future."
         } else if comparisonResult == .orderedDescending {
             // Selected date is in the past compared to the current date
             resultTextField.text = "Selected date is in the past."
         } else {
             // Selected date is the same as the current date
             resultTextField.text = "Selected date is the same as the current date."
         }
     }
 }
 */
