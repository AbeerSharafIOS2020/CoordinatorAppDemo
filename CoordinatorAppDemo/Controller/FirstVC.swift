//
//  FirstVC.swift
//  CoordinatorAppDemo
//
//  Created by AbeerSharaf on 11/20/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit

import UIKit
public protocol FirstViewControllerDelegate: class {
    func navigateToNextPage()
}

class FirstVC: UIViewController {
    public weak var delegate: FirstViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FirstVC"
        
    }
    @IBAction func goToSecondPageAction(_ sender: Any) {
        self.delegate?.navigateToNextPage()
    }
    
}
