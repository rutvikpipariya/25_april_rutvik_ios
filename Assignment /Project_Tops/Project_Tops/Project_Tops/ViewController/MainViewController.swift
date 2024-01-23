//
//  MainViewController.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 22/01/24.
//

import UIKit
import UserNotifications
import FirebaseAuth
import GoogleSignIn

class MainViewController: UIViewController {
    
   //===========================================
   //Outlets
   //===========================================
    
    @IBOutlet weak var showMenu: UIButton!
    @IBOutlet weak var uiView: UIView!
    
    //===========================================
    //Variables
    //===========================================
    
    var selectedFrequency: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiView.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            uiView.isHidden = true
        }
    
    //===========================================
    //Button Actions
    //===========================================
    
    @IBAction func menuButton(_ sender: Any)
    {
        toggleCustomView()
    }
    
    @IBAction func notificationButton(_ sender: Any)
    {
        let actionSheet = UIAlertController(title: "Set Reminder", message: nil, preferredStyle: .actionSheet)
        
        let neverAction = UIAlertAction(title: "Never", style: .default) { _ in
            self.selectedFrequency = "Never"
        }
        
        let dailyAction = UIAlertAction(title: "Daily", style: .default) { _ in
            self.selectedFrequency = "Daily"
            self.showDatePicker()
        }
        
        let weeklyAction = UIAlertAction(title: "Weekly", style: .default) { _ in
            self.selectedFrequency = "Weekly"
            self.showDatePicker()
        }
        
        let monthlyAction = UIAlertAction(title: "Monthly", style: .default) { _ in
            self.selectedFrequency = "Monthly"
            self.showDatePicker()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        actionSheet.addAction(neverAction)
        actionSheet.addAction(dailyAction)
        actionSheet.addAction(weeklyAction)
        actionSheet.addAction(monthlyAction)
        actionSheet.addAction(cancelAction)
        
        present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func darkMode(_ sender: UISwitch) 
    {
        
        if #available(iOS 13.0, *) {
                    if sender.isOn {
                        // Enable dark mode
                        toggleDarkMode(true)
                    } else {
                        // Disable dark mode
                        toggleDarkMode(false)
                    }
                }
        
    }
    
    @IBAction func logoutButton(_ sender: Any)
    {
        if Auth.auth().currentUser != nil
        {
               do
               {
                   try Auth.auth().signOut()
                   let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainVC")
                   present(vc, animated: true, completion: nil)
                   
               } catch let error as NSError {
                   print(error.localizedDescription)
               }
           }
        
        GIDSignIn.sharedInstance.signOut()
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func multipleCell(_ sender: Any)
    {
        let signupVC=storyboard?.instantiateViewController(withIdentifier: "LikeInstagramViewController") as! LikeInstagramViewController
        present(signupVC, animated: true)
    }
    
    @IBAction func collectionView(_ sender: Any) 
    {
        let signupVC=storyboard?.instantiateViewController(withIdentifier: "CollectionViewController") as! CollectionViewController
        present(signupVC, animated: true)
    }
    
    @IBAction func restCountry(_ sender: Any) 
    {
        let signupVC=storyboard?.instantiateViewController(withIdentifier: "RestCountriesViewController") as! RestCountriesViewController
        present(signupVC, animated: true)
    }
    
    @IBAction func coreData(_ sender: Any) 
    {
        let signupVC=storyboard?.instantiateViewController(withIdentifier: "SavedataViewController") as! SavedataViewController
        present(signupVC, animated: true)
    }
    
    @IBAction func realTimeDatabase(_ sender: Any) 
    {
        let signupVC=storyboard?.instantiateViewController(withIdentifier: "DataBaseViewController") as! DataBaseViewController
        present(signupVC, animated: true)
    }
    
    //===========================================
    //Custom Functions
    //===========================================

    
    func showDatePicker() {
            let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime

        let alertController = UIAlertController(title: "\t", message: nil, preferredStyle: .actionSheet)
            alertController.view.addSubview(datePicker)

        
            let setAction = UIAlertAction(title: "Set Reminder", style: .default) { _ in
                self.scheduleNotification(date: datePicker.date)
            }

            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

            alertController.addAction(setAction)
            alertController.addAction(cancelAction)

            present(alertController, animated: true, completion: nil)
        }
    
    @objc func toggleCustomView() {
        uiView.isHidden.toggle()
    }
    
    func scheduleNotification(date: Date) {
        let center = UNUserNotificationCenter.current()
        if selectedFrequency == "Never" {
            center.removeAllPendingNotificationRequests()
            print("All pending notifications canceled.")
        } else {
            center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                if granted {
                    let content = UNMutableNotificationContent()
                    content.title = "Reminder"
                    content.body = "Don't forget about your task!"
                    content.sound = UNNotificationSound.default

                    let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: date)

                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)

                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                    center.add(request) { error in
                        if let error = error {
                            print("Error scheduling notification: \(error.localizedDescription)")
                        } else {
                            print("Notification scheduled successfully")
                        }
                    }
                } else {
                    print("Permission denied for notifications")
                }
            }
        }
    }
    
    func isDarkModeEnabled() -> Bool {
            return traitCollection.userInterfaceStyle == .dark
        }

    func toggleDarkMode(_ isEnabled: Bool) {
            if isEnabled {
                overrideUserInterfaceStyle = .dark
            } else {
                overrideUserInterfaceStyle = .light
            }
    }
    
}


