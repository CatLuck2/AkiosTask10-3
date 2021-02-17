//
//  ViewController.swift
//  AkiosTask10-3
//
//  Created by Nekokichi on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {

    private let tableView = PrefectureTableView()
    private let tableViewDelegate = PrefectureTableViewDelegate()

    override func viewDidLoad() {
        setUpTableView()
    }

    private func setUpTableView() {
        tableView.setUp(tableViewFrame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        tableView.delegate = tableViewDelegate
        tableView.dataSource = tableViewDelegate
        self.view.addSubview(tableView)
    }
}
