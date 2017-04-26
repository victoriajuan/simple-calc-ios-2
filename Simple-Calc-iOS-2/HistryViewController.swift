//
//  HistryViewController.swift
//  Simple-Calc-iOS-2
//
//  Created by Vicky Juan on 4/25/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import UIKit

class HistryViewController: UIViewController {
    let screenSize: CGRect = UIScreen.main.bounds
    var history = [String]()
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 200, height: history.count * 30)
        
        for i in 0..<history.count {
            let label = UILabel(frame: CGRect(x: 0, y: i*30, width: 200, height: 25))
   
            label.textAlignment = .left
            label.text = history[i]
            self.scrollView.addSubview(label)
        }
        
    }
    

}
