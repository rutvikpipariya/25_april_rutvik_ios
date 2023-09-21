//
//  ViewController.swift
//  MediaPlayerApp
//
//  Created by Rutvik Pipaliya on 13/09/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    
    var myplayer=AVPlayerViewController()
    var plyObj=AVPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_audio(_ sender: Any)
    {
        let path=URL(filePath: Bundle.main.path(forResource: "mysong", ofType: "mp3")!)
        plyObj=AVPlayer(url: path)
        myplayer.player=plyObj
        plyObj.play()
        //plyObj.volume=20
        present(myplayer, animated: true)
        
    }
    
    @IBAction func btn_video(_ sender: Any)
    {
        let path=URL(filePath: Bundle.main.path(forResource: "new", ofType: "mp4")!)
        plyObj=AVPlayer(url: path)
        myplayer.player=plyObj
        plyObj.play()
        //plyObj.volume=20
        present(myplayer, animated: true)
    }
    
}

