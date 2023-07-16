//
//  ViewController.swift
//  pickerviewcourses
//
//  Created by JADEJA PARIKSHITSINH on 16/07/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label_course: UILabel!
    let courses = ["PHP", "Python", "iOS", "Android", "JAVA","JAVA Script","c objective"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
  
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            let course = courses[row]
        label_course.text = course
        }

}

/*
 import UIKit

 class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

     @IBOutlet weak var coursePickerView: UIPickerView!

     let courses = ["Mathematics", "Physics", "Chemistry", "Biology", "Computer Science"]
     
     override func viewDidLoad() {
         super.viewDidLoad()
         coursePickerView.delegate = self
         coursePickerView.dataSource = self
     }

     // Implement the UIPickerViewDataSource methods
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
     }
     
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return courses.count
     }
     
     // Implement the UIPickerViewDelegate methods
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return courses[row]
     }
 }
 */
