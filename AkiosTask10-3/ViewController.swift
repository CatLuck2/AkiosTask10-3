//
//  ViewController.swift
//  AkiosTask10-3
//
//  Created by Nekokichi on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {

    private let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        setUpTableView()
    }

    private func setUpTableView() {
        tableView.delegate = self
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(tableView)
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        return cell
    }
}

