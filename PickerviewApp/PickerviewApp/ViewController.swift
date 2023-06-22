//
//  ViewController.swift
//  PickerviewApp
//
//  Created by MAC03 on 20/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_city: UITextField!
    var city=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        city=["Ahmedabad","Rajkot","Surat","Baroda","Junagadh","Jamnagar"]
    }
}
extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return city.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return city[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        txt_city.text=city[row]
        
        let alert=UIAlertController(title:"City", message:city[row], preferredStyle: .alert)
        let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    
}
