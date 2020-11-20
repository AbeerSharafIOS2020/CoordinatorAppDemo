//
//  Coordinator.swift
//  CoordinatorAppDemo
//
//  Created by AbeerSharaf on 11/20/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit

public protocol Coordinator : class {
    
    var childCoordinators: [Coordinator] { get set }
    
    // All coordinators will be initilised with a navigation controller
    init(navigationController:UINavigationController)
    
    func start()
}
