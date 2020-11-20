//
//  SecondVC.swift
//  CoordinatorAppDemo
//
//  Created by AbeerSharaf on 11/20/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit
public protocol SecondViewControllerDelegate: class {
    func navigateToFirstPage()
    func navigateToThirdPage()
}

class SecondVC: UIViewController {
    public weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SecondVC"
        
        // Use custom back button to pass through coordinator.
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(navigateBackToFirstpage))
        self.navigationItem.leftBarButtonItem = backButton
        
        // Do any additional setup after loading the view.
    }
    
    @objc func navigateBackToFirstpage() {
        self.delegate?.navigateToFirstPage()
    }
    @IBAction func navigateToThirdPageAction(_ sender: Any) {
        self.delegate?.navigateToThirdPage()
    }
}
