//
//  ViewController.swift
//  AkiosTask10-3
//
//  Created by Nekokichi on 2021/02/15.
//

import UIKit

enum PrefectureColor {

    case red, green, blue
    case other

    var rawValueColor: UIColor {
        switch self {
        case .red: return .red
        case .green: return .green
        case .blue: return .blue
        case .other: return .clear
        }
    }
}

class ViewController: UIViewController {

    private let tableView = UITableView()
    private let prefectures = Prefectures()
    private var prefectureColor = PrefectureColor.other

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        setUpTableView()
    }

    private func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(tableView)
    }

    private func getPrefectureColor(indexPathRow: Int) -> UIColor {
        switch indexPathRow % 3 {
        case 0:
            prefectureColor = .red
        case 1:
            prefectureColor = .green
        case 2:
            prefectureColor = .blue
        default:
            prefectureColor = .other
        }
        return prefectureColor.rawValueColor
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefectures.names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.textLabel?.text = prefectures.names[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"
        cell.backgroundColor = getPrefectureColor(indexPathRow: indexPath.row)
        return cell
    }
}

