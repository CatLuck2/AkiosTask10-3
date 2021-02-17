//
//  PrefectureTableView.swift
//  AkiosTask10-3
//
//  Created by Nekokichi on 2021/02/17.
//

import UIKit

class PrefectureTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUp(tableViewFrame frame: CGRect) {
        self.frame = frame
    }
}
