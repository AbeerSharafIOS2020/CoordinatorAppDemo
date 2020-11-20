//
//  SecondCoordinator.swift
//  CoordinatorAppDemo
//
//  Created by AbeerSharaf on 11/20/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit

protocol BackToFirstViewControllerDelegate: class {
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator)    
}

class SecondCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController: UINavigationController
    
    // We use this delegate to keep a reference to the parent coordinator
    weak var delegate: BackToFirstViewControllerDelegate?
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let secondVC : SecondVC = SecondVC()
        secondVC.delegate = self
        self.navigationController.pushViewController(secondVC, animated: true)
    }
}

extension SecondCoordinator : SecondViewControllerDelegate {
    // Navigate to third page
    func navigateToThirdPage() {
        let thirdVC : ThirdVC = ThirdVC()
        thirdVC.delegate = self
        self.navigationController.pushViewController(thirdVC, animated: true)
    }
    
    // Navigate to first page
    func navigateToFirstPage() {
        self.delegate?.navigateBackToFirstPage(newOrderCoordinator: self)
    }
}
