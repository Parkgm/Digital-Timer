//
//  ViewController.swift
//  Digital Timer
//
//  Created by D7703_13 on 2018. 4. 10..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var myTimer = Timer()
    
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        timeLabel.text = formatter.string(from: date)
        //        timeLabel.text = String(describing: date)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            self.updateTime()
        })
        
    }


    


}

