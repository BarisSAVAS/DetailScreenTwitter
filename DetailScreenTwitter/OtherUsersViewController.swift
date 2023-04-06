//
//  OtherUsersViewController.swift
//  DetailScreenTwitter
//
//  Created by Barış Savaş on 3.04.2023.
//

import UIKit

class OtherUsersViewController: BaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
        tableView.register(OtherUsersTableViewCell.self, forCellReuseIdentifier: OtherUsersTableViewCell.identifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OtherUsersTableViewCell.identifier, for: indexPath)
        return cell
    }
}
