//
//  ViewController.swift
//  ios1908wa-g87-ls9
//
//  Created by Ивченко Антон on 24.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let groupList = ["Admin Client Service", "Artem Bilous", "Artem Zosyuk", "Artem Velikiy", "blackice", "Dima Paliyenko", "Eugene Vlasov", "Petro Starychok", "Sergij Pankiv", "Valentina", "Valerij Syroiezhin", "Viktor Mandryk", "Антон", "Ирина Форкалюк", "Микита Бабушкин"]
    @IBOutlet weak var groupTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        groupTableView.register(UINib(nibName: "GroupTableViewCell", bundle: nil), forCellReuseIdentifier: "groupCell")
    }
}

extension ViewController: UITableViewDelegate {
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = groupTableView.dequeueReusableCell(withIdentifier: "groupCell") else {
            return UITableViewCell()
        }
        (cell as? GroupTableViewCell)?.namePersonLabel.text = groupList[indexPath.row]
        return cell
    }
}
