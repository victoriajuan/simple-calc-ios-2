//
//  HistryViewController.swift
//  Simple-Calc-iOS-2
//
//  Created by Vicky Juan on 4/25/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import UIKit

class HistryViewController: UIViewController {
    var history = [String]()
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: Int(view.frame.size.width), height: Int(view.frame.size.height))
        
        for i in 0..<history.count {
            let label = UILabel(frame: CGRect(x: 0, y: i*30, width: Int(self.view.frame.size.width), height: 25))
   
            label.textAlignment = .left
            label.text = history[i]
            self.scrollView.addSubview(label)
        }
        
    }
    

}
