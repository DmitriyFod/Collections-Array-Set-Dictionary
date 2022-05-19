//
//  ViewController.swift
//  Collections
//
//  Created by Admin on 12.05.2022.
//

import UIKit

class ViewController: UIViewController {
    let collections = ["Array", "Set", "Dictionary"]
    @IBOutlet weak var collectionTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionTable.delegate = self
        collectionTable.dataSource = self
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = UIStoryboard(name: "ViewController", bundle: nil).instantiateViewController(withIdentifier: "Your VC identifier") as! YourViewController
//        // pass your data and configure the viewcontroller here
//        navigationController?.pushViewController(vc, animated: true)
//        performSegue(withIdentifier: "showDetails", sender: self)
        if indexPath.row == 0 {
            performSegue(withIdentifier: "showArrays", sender: self)
        }else if indexPath.row == 1 {
            performSegue(withIdentifier: "showSets", sender: self)
        }else {
            performSegue(withIdentifier: "showDictionaries", sender: self)
        }
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = collections[indexPath.row]
        return cell
    }
    
    
}
