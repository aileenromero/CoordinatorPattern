//
//  ApplicationCoordinator.swift
//  CoordinatorPattern
//
//  Created by Aileen Romero on 16/04/2020.
//  Copyright © 2020 Aileen Romero. All rights reserved.
//

import UIKit

class ApplicationCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = BlueViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func redVC() {
        let vc = RedViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func yellowVC() {
        let vc = YellowViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func greenVC() {
        let vc = GreenViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
}
