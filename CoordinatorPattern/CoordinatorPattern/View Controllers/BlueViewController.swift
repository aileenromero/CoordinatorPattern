//
//  BlueViewController.swift
//  CoordinatorPattern
//
//  Created by Aileen Romero on 16/04/2020.
//  Copyright © 2020 Aileen Romero. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController, Storyboarded {

    weak var coordinator: ApplicationCoordinator?
    
    private var colors = ["Red", "Yellow"]
    
    @IBOutlet weak var fooTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fooTableView.register(cellType: FooTableViewCell.self)
    }
    
}

extension BlueViewController: UITableViewDelegate, UITableViewDataSource {

        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return colors.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = fooTableView.dequeueReusableCell(for: indexPath) as FooTableViewCell
            
            let color = colors[indexPath.row]
            let textColor = color.lowercased()
            
            cell.colorLabel.text = color
            
            if textColor == "red" {
                cell.colorLabel.textColor = .red
            } else if textColor == "yellow" {
                cell.colorLabel.textColor = .yellow
            }
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let color = colors[indexPath.row]
            let textColor = color.lowercased()
            
            if textColor == "red" {
                coordinator?.redVC()
            } else if textColor == "yellow" {
                coordinator?.yellowVC()
            }
            
        }
    
}
