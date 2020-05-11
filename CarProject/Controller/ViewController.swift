//
//  ViewController.swift
//  CarProject
//
//  Created by sahand raeisi on 5/7/20.
//  Copyright © 2020 sina raeisi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var items = [CarInfo]()
    
    @IBOutlet weak var tableView: UITableView!{
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            let nib = UINib(nibName: "CarsInformationCell", bundle: .main)
            tableView.register(nib, forCellReuseIdentifier: "CarsInformationCell")
            tableView.rowHeight = 131
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getItems()
    }
    
    func getItems() {
        
        let ferrari = CarInfo(image: UIImage(named: "ferrari")!, title: "ferrari 812", desc: "V12")
        let maserati = CarInfo(image: UIImage(named: "maserati")!, title: "maserati ghibli", desc: "V8")
        
        items = [ferrari,maserati]
        tableView.reloadData()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarsInformationCell") as! CarsInformationCell
        cell.config(object: items[indexPath.row])
        return cell
    }
    
}

