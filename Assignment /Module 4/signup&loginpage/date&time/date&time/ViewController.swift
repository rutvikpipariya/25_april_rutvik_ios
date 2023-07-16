//
//  ViewController.swift
//  date&time
//
//  Created by JADEJA PARIKSHITSINH on 17/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeDate: UIDatePicker!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TimeDate.addTarget(self, action: #selector(dateTimePickerValueChanged(_:)), for: .valueChanged)
    }

    @objc func dateTimePickerValueChanged(_ sender: UIDatePicker) {
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = .long
        dateFormat.timeStyle = .short
        let select = sender.date
        let dateTime = dateFormat.string(from: select)
        Label.text = dateTime
    }

}
/*
 import UIKit

 class ViewController: UIViewController {

     @IBOutlet weak var dateTimePicker: UIDatePicker!
     @IBOutlet weak var dateTimeLabel: UILabel!

     override func viewDidLoad() {
         super.viewDidLoad()
         dateTimePicker.addTarget(self, action: #selector(dateTimePickerValueChanged(_:)), for: .valueChanged)
     }

     @objc func dateTimePickerValueChanged(_ sender: UIDatePicker) {
         let dateFormatter = DateFormatter()
         dateFormatter.dateStyle = .medium
         dateFormatter.timeStyle = .short
         let selectedDateTime = sender.date
         let dateTimeString = dateFormatter.string(from: selectedDateTime)
         dateTimeLabel.text = dateTimeString
     }
 }
 */
