//
//  ViewController.swift
//  App Test 2
//
//  Created by Justin Lo on 2019-09-04.
//  Copyright © 2019 Justin Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var transparentView = UIView()
    var tableView = UITableView()
    
    let height: CGFloat = 300
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.isScrollEnabled = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickMenu(_ sender: Any) {
    
        let window = UIApplication.shared.keyWindow
        transparentView.backgroundColor =  UIColor.black.withAlphaComponent(0.8)
        
        transparentView.frame = self.view.frame
        
        window?.addSubview(transparentView)
        
        let screenSize = UIScreen.main.bounds.size
        
        tableView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize.width, height: height)
        
        window?.addSubview(tableView)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onClickTransparentView))
    transparentView.addGestureRecognizer(tapGesture)
        
        transparentView.alpha = 0
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0.5
            self.tableView.frame = CGRect(x: 0, y: screenSize.height - self.height, width: screenSize.width, height: self.height)
        }, completion: nil)
        
    }
    
    @objc func onClickTransparentView(){
        
        let screenSize = UIScreen.main.bounds.size
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0
            self.tableView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize.width, height: self.height)
        }, completion: nil)

    }
}
