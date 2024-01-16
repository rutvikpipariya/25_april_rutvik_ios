//
//  ChatViewController.swift
//  FireAPP
//
//  Created by Rutvik Pipaliya on 17/10/23.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth


class ChatViewController: UIViewController {

    @IBOutlet weak var my_tbl: UITableView!
    
    @IBOutlet weak var txt_msg: UITextField!
    
    @IBOutlet weak var btn_send: UIButton!
    
var messageArr = [Message]()
    var array = ["1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //getMsgs()
    }
    
    
    
    
    @IBAction func btn_send(_ sender: Any)
    {
        txt_msg.endEditing(true)
        txt_msg.isEnabled = false
        btn_send.isEnabled = false
        let msgDB = Database.database().reference().child("fire")
        let msgDict = ["Sender" : Auth.auth().currentUser?.email, "MessageBody" : txt_msg.text!]
        msgDB.childByAutoId().setValue(msgDict){(error,ref) in
            if(error != nil){
                debugPrint(error!.localizedDescription)
            }else{
                debugPrint("Msg saved successfully")
                self.txt_msg.isEnabled = true
                self.btn_send.isEnabled = true
                self.txt_msg.text = nil
            }
        }
        
    }
    
    func getMsgs()
    {
        let questionPostsRef = Database.database().reference().child("fire")
        let query = questionPostsRef.queryOrdered(byChild: "Sender")
        query.observeSingleEvent(of: .value, with: { [self] snapshot in
            for child in snapshot.children 
            {
                let childSnap = child as! DataSnapshot
                let dict = childSnap.value as! [String: Any]
                let sen = dict["Sender"] as! String
                let msg = dict["MessageBody"] as! String
                print(childSnap.key, sen, msg)
                //array.append(sen)
                    //array.append(msg)
            }
        })
        
    }
    
}

extension ChatViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_first.text = array[indexPath.row]
        cell.lbl_bold.text = array[indexPath.row]
        return cell
    }
    
    
}
