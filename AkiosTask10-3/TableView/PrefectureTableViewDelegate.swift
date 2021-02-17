//
//  PrefectureTableViewDelegate.swift
//  AkiosTask10-3
//
//  Created by Nekokichi on 2021/02/17.
//

import UIKit

class PrefectureTableViewDelegate: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    private var prefectureNames: [String] = []
    private var prefectureColor: PrefectureColor = PrefectureColor.other
    private let reuseIdentifier: String = "cell"

    override init() {
        super.init()
        initialize()
    }

    private func initialize() {
        self.prefectureNames = Prefectures().names
    }

    private func outputPrefectureDetailText(indexPathRow: Int) -> String {
        "\(indexPathRow + 1)番目の都道府県です"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefectureNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: reuseIdentifier)
        cell.textLabel?.text = prefectureNames[indexPath.row]
        cell.detailTextLabel?.text = outputPrefectureDetailText(indexPathRow: indexPath.row)
        cell.backgroundColor = getPrefectureColor(indexPathRow: indexPath.row)
        return cell
    }
}

extension PrefectureTableViewDelegate {
    enum PrefectureColor {

        case red, green, blue
        case other

        var rawValueColor: UIColor {
            switch self {
            case .red: return .red
            case .green: return .green
            case .blue: return .systemBlue
            case .other: return .clear
            }
        }
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

