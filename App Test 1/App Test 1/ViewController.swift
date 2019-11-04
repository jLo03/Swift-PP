//
//  ViewController.swift
//  App Test 1
//
//  Created by Justin Lo on 2019-08-13.
//  Copyright © 2019 Justin Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Text: UILabel!
    
    @IBAction func TextChange1(_ sender: UIButton)
    {
        let title = sender.title(for: .normal)!
        Text.text = "You clicked \(title) button"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    } 


}

