//
//  YellowViewController.swift
//  CoordinatorPattern
//
//  Created by Aileen Romero on 16/04/2020.
//  Copyright © 2020 Aileen Romero. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController, Storyboarded {

    weak var coordinator: ApplicationCoordinator?
    
    @IBAction func didTapGreenButton(_ sender: Any) {
        coordinator?.greenVC()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
