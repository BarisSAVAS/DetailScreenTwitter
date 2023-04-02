//
//  OtherUsersViewController.swift
//  DetailScreenTwitter
//
//  Created by Barış Savaş on 3.04.2023.
//

import UIKit

class OtherUsersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let tableView: UITableView = {
        let tableView = UITableView()
        //otheruserscell gelicek buraya
        tableView.register(OtherUsersTableViewCell.self, forCellReuseIdentifier: OtherUsersTableViewCell.identifier)
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OtherUsersTableViewCell.identifier, for: indexPath)
        return cell
    }
}
