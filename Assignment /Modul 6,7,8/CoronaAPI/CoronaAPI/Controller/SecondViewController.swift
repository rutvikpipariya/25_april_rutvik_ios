//
//  SecondViewController.swift
//  CoronaAPI
//
//  Created by Rutvik Pipaliya on 23/09/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var state_name: UILabel!
    @IBOutlet weak var state_code: UILabel!
    @IBOutlet weak var last_update: UILabel!
    @IBOutlet weak var activecases: UILabel!
    @IBOutlet weak var con_cases: UILabel!
    @IBOutlet weak var deathss: UILabel!
    @IBOutlet weak var rec_cases: UILabel!
    
    var lblstate = ""
    var lblstatecode = ""
    var lbllastupdate = ""
    var lblactive = ""
    var lblconcases = ""
    var lbldeaths = ""
    var lblrec = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        state_name.text = "State Name:"
//        state_code.text = "State Code:"
//        last_update.text = "Last Update Date:"
//        activecases.text = "Active Cases:"
//        con_cases.text = "Confirmed Cases:"
//        deathss.text = "Deathes:"
//        rec_cases.text = "Recovered Cases:"
        
        state_name.text = lblstate
        state_code.text = lblstatecode
        last_update.text = lbllastupdate
        activecases.text = lblactive
        con_cases.text = lblconcases
        deathss.text = lbldeaths
        rec_cases.text = lblrec
        
    }
    

   

}
