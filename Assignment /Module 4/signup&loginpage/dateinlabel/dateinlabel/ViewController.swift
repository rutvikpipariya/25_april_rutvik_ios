//
//  ViewController.swift
//  dateinlabel
//
//  Created by JADEJA PARIKSHITSINH on 16/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)
    }


    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        let selectedDate = sender.date
        let dateString = dateFormatter.string(from: selectedDate)
        dateLabel.text = dateString
    }

}

/*
 import UIKit

 class ViewController: UIViewController {

     @IBOutlet weak var datePicker: UIDatePicker!
     @IBOutlet weak var dateLabel: UILabel!

     override func viewDidLoad() {
         super.viewDidLoad()
         datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)
     }

     @objc func datePickerValueChanged(_ sender: UIDatePicker) {
         let dateFormatter = DateFormatter()
         dateFormatter.dateStyle = .medium
         dateFormatter.timeStyle = .none
         let selectedDate = sender.date
         let dateString = dateFormatter.string(from: selectedDate)
         dateLabel.text = dateString
     }
 }
 */
