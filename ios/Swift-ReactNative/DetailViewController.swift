//
//  DetailViewController.swift
//  Swift-ReactNative
//
//  Created by Tomas Sykora, jr. on 13/11/2018.
//  Copyright © 2018 Tomas Sykora, jr. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let detailDescriptionLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        detailDescriptionLabel.text = "Swift native UILabel"
        detailDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(detailDescriptionLabel)
        detailDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        detailDescriptionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

