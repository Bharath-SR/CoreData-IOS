//
//  ViewController.swift
//  Core_Data
//
//  Created by YE002 on 07/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var carsListView: UITextView!
    
    var cars: [Car] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        readCars()
    }

    func readCars(){
       cars = CoreDataManager.shared.fetch()
        carsListView.reloadData()
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell=tableView.dequeueReusableCell(withIdentifier: "CarCell") else {
            return UITableViewCell()
        }
        let aCar = cars[indexPath.row]
        cell.textLabel?.text = aCar.brand
        cell.detailTextLabel?.text = aCar.color
        return cell
    }
}
