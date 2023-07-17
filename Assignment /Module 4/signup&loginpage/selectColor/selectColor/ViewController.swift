//
//  ViewController.swift
//  selectColor
//
//  Created by JADEJA PARIKSHITSINH on 17/07/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var colors: UIPickerView!
    @IBOutlet var colorView: UIView!
    
    let color: [(name: String, color: UIColor)] = [
        ("Red", .red),
        ("Green", .green),
        ("Blue", .blue),
        ("Yellow", .yellow),
        ("Purple", .purple),
        ("Orange", .orange)
    ]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        color.count
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colors.delegate = self
        colors.dataSource = self
    }


    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selColor = color[row].color
        colorView.backgroundColor = selColor
    }
    
}

/*
 import UIKit

 class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
     @IBOutlet weak var colorPickerView: UIPickerView!
     @IBOutlet weak var colorView: UIView!
     
     let colors: [(name: String, color: UIColor)] = [
         ("Red", .red),
         ("Green", .green),
         ("Blue", .blue),
         ("Yellow", .yellow),
         ("Purple", .purple)
     ]
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         colorPickerView.delegate = self
         colorPickerView.dataSource = self
     }
     
     // MARK: - UIPickerViewDataSource
     
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
     }
     
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return colors.count
     }
     
     // MARK: - UIPickerViewDelegate
     
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return colors[row].name
     }
     
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         let selectedColor = colors[row].color
         colorView.backgroundColor = selectedColor
     }
 }
 */
