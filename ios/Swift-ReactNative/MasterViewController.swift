//
//  MasterViewController.swift
//  Swift-ReactNative
//
//  Created by Tomas Sykora, jr. on 13/11/2018.
//  Copyright © 2018 Tomas Sykora, jr. All rights reserved.
//

import UIKit
import React

class MasterViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let controller = DetailViewController()
            navigationController?.pushViewController(controller, animated: true)
        default:
            let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
            let mockData: NSDictionary = ["scores":
                [
                    ["name":"Alex", "value":"42"],
                    ["name":"Joel", "value":"10"]
                ]
            ]

            let rootView = RCTRootView (
                bundleURL: jsCodeLocation,
                moduleName: "ReactNativeComponentExampleView",
                initialProperties: mockData as [NSObject : AnyObject],
                launchOptions: nil)

            let vc = UIViewController()
            vc.view = rootView
            self.navigationController?.pushViewController(vc, animated: true)
        }

    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = "Show me swift native code"
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = "Show me react native code"
            return cell
        }
    }

}

