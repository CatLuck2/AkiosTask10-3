//
//  PrefectureTableViewDelegate.swift
//  AkiosTask10-3
//
//  Created by Nekokichi on 2021/02/17.
//

import UIKit

class PrefectureTableViewDelegate: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    private var prefectureNames: [String] = Prefecture.names
    private let reuseIdentifier: String = "cell"

    private func getPrefectureDetailText(indexPathRow: Int) -> String {
        "\(indexPathRow + 1)番目の都道府県です"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefectureNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: reuseIdentifier)
        cell.textLabel?.text = prefectureNames[indexPath.row]
        cell.detailTextLabel?.text = getPrefectureDetailText(indexPathRow: indexPath.row)
        cell.backgroundColor = getPrefectureColor(indexPathRow: indexPath.row)
        return cell
    }

    private func getPrefectureColor(indexPathRow: Int) -> UIColor {
        switch indexPathRow % 3 {
        case 0:
            return .red
        case 1:
            return .green
        case 2:
            return .blue
        default:
            fatalError("起こり得ない")
        }
    }
}
