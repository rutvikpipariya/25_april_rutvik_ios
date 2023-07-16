//
//  ViewController.swift
//  dateinlabel
//
//  Created by JADEJA PARIKSHITSINH on 16/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)
    }


    @objc func pickdate(_ sender: UIDatePicker) {
        let date = DateFormatter()
        date.dateStyle = .medium
        date.timeStyle = .none
        let dateSelect = sender.date
        let dateString = date.string(from: dateSelect)
        Label.text = dateString
    }

}

