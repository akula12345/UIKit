//
//  FirstViewController.swift
//  EmptyProject
//
//  Created by Вячеслав on 19.10.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var devices: [Device] = []
    override func viewDidLoad() {
        devices = Device.allRealDevices
        tableView.register(UINib(nibName: "CellView", bundle: nil), forCellReuseIdentifier: "CellView")
    }
}
extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Device.allRealDevices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellView", for: indexPath) as! DeviceTableViewCell
        
        let device = devices[indexPath.row]
        
        cell.deviceNameLabel.text = device.name
        cell.deviceDescriptionLabel.text = "PPI: \(String(describing: device.ppi)), Diagonal: \(device.diagonal) inch"
        return cell
    }
}
