//
//  FirstCoordinator.swift
//  CoordinatorAppDemo
//
//  Created by AbeerSharaf on 11/20/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit

class FirstCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController:UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstVC : FirstVC = FirstVC()
        firstVC.delegate = self
        self.navigationController.viewControllers = [firstVC]
    }
}

extension FirstCoordinator: FirstViewControllerDelegate {
    
    // Navigate to next page
    func navigateToNextPage() {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController)
        secondCoordinator.delegate = self
        childCoordinators.append(secondCoordinator)
        secondCoordinator.start()
    }
}

extension FirstCoordinator: BackToFirstViewControllerDelegate {
    
    // Back from third page
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator) {
        navigationController.popToRootViewController(animated: true)
        childCoordinators.removeLast()
    }
}
