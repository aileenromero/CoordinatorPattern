//
//  Storyboarded.swift
//  CoordinatorPattern
//
//  Created by Aileen Romero on 16/04/2020.
//  Copyright © 2020 Aileen Romero. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: id, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
