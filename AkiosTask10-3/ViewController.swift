//
//  ViewController.swift
//  AkiosTask10-3
//
//  Created by Nekokichi on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {

    private let tableView = UITableView()
    private let tableViewDelegate = PrefectureTableViewDelegate()

    override func viewDidLoad() {
        setUpTableView()
    }

    private func setUpTableView() {
        view.addSubview(tableView)

        tableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])

        tableView.delegate = tableViewDelegate
        tableView.dataSource = tableViewDelegate
    }
}
