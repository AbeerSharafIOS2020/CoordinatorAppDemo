//
//  ThirdVC.swift
//  CoordinatorAppDemo
//
//  Created by AbeerSharaf on 11/20/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    public weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ThirdVC"
    }
    
    @IBAction func navigateToFirstPageAction(_ sender: Any) {
        self.delegate?.navigateToFirstPage()
    }
    
}
