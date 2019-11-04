//
//  ThirdViewController.swift
//  todoList
//
//  Created by Justin Lo on 2019-09-18.
//  Copyright © 2019 Riley Norris. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var day: UITextField!
    @IBOutlet weak var month: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.delegate = self as? UITextFieldDelegate
        time.delegate = self as? UITextFieldDelegate
        day.delegate = self as? UITextFieldDelegate
        month.delegate = self as? UITextFieldDelegate

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        textView.text = "time: \(userName.text!)\n Day: \(day.text!)"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
