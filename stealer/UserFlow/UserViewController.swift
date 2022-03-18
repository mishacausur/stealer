//
//  ViewController.swift
//  stealer
//
//  Created by Misha Causur on 18.03.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    private let switcher = UISwitch().configure {
        $0.translatesAutoresizingMaskIntoConstraints = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        view.backgroundColor = .systemMint
    }

    private func configureViews() {
        view.addSubview(switcher)
        [switcher.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         switcher.centerYAnchor.constraint(equalTo: view.centerYAnchor)].forEach { $0.isActive = true }
    }

}

