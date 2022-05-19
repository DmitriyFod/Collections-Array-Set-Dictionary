//
//  DictionariesViewController.swift
//  Collections
//
//  Created by Admin on 15.05.2022.
//

import UIKit

class DictionariesViewController: UIViewController {
    var i = 0
    var array = [Contact]()
    var dictionary = [String: String]()
    struct Contact {
        var name: String
        var phone: String
    }
    @IBOutlet weak var findFirstContactArray: UIButton!
    @IBOutlet weak var findLastContactArray: UIButton!
    @IBOutlet weak var findNonExistingArray: UIButton!
    @IBOutlet weak var findFirstContactDictionary: UIButton!
    @IBOutlet weak var findLastContactDictionary: UIButton!
    @IBOutlet weak var findNonExistingDictionary: UIButton!
    @IBOutlet weak var arraySpinnerFirst: UIActivityIndicatorView!
    @IBOutlet weak var arraySpinnerLast: UIActivityIndicatorView!
    @IBOutlet weak var arraySpinnerNonExisting: UIActivityIndicatorView!
    @IBOutlet weak var dictionarySpinnerFirst: UIActivityIndicatorView!
    @IBOutlet weak var dictionarySpinnerLast: UIActivityIndicatorView!
    @IBOutlet weak var dictionarySpinnerNonExisting: UIActivityIndicatorView!
    @IBAction func findFirstContactArrayAction(_ sender: Any) {
        let start = DispatchTime.now()
        findFirstContactArray.setTitle("", for: .normal)
        arraySpinnerFirst.startAnimating()
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.arraySpinnerFirst.stopAnimating()
            self.findFirstContactArray.setTitle("First contact name:\(self.array.first?.name ?? "Not Found") time:  \(timeInterval) ms", for: .normal)
    }
    }
    @IBAction func findLastContactArrayAction(_ sender: Any) {
        let start = DispatchTime.now()
        findLastContactArray.setTitle("", for: .normal)
        arraySpinnerLast.startAnimating()
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.arraySpinnerLast.stopAnimating()
            self.findLastContactArray.setTitle("Last contact name:\(self.array.last?.name ?? "Not Found") time:  \(timeInterval) ms", for: .normal)
    }
    }
    @IBAction func findNonExistingArrayAction(_ sender: Any) {
        let start = DispatchTime.now()
        findNonExistingArray.setTitle("", for: .normal)
        arraySpinnerNonExisting.startAnimating()
        if array.filter({$0.name == "Like"}).count > 0 {
            
        }else {
            let end = DispatchTime.now()
            let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
            let timeInterval = Double(nanoTime) / 1_000_000_000
            DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
                self.arraySpinnerNonExisting.stopAnimating()
                self.findNonExistingArray.setTitle("It's not existing item time:  \(timeInterval) ms", for: .normal)
        }
        }
        

    }
    @IBAction func findFirstContactDictionaryAction(_ sender: Any) {
        let start = DispatchTime.now()
        findFirstContactDictionary.setTitle("", for: .normal)
        dictionarySpinnerFirst.startAnimating()
        let sortedOne = dictionary.sorted { (first, second) -> Bool in
            return first.key < second.key
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.dictionarySpinnerFirst.stopAnimating()
            self.findFirstContactDictionary.setTitle("First contact name:\(sortedOne.first!.key) time:  \(timeInterval) ms", for: .normal)
    }
    }
    @IBAction func findLastContactDictionaryAction(_ sender: Any) {
        let start = DispatchTime.now()
        findLastContactDictionary.setTitle("", for: .normal)
        dictionarySpinnerLast.startAnimating()
        let sortedOne = dictionary.sorted { (first, second) -> Bool in
            return first.key < second.key
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.dictionarySpinnerLast.stopAnimating()
            self.findLastContactDictionary.setTitle("Last contact name:\(sortedOne.last!.key) time:  \(timeInterval) ms", for: .normal)
    }
    }
    @IBAction func findNonExistingDictionaryAction (_ sender: Any) {
        let start = DispatchTime.now()
        findNonExistingDictionary.setTitle("", for: .normal)
        dictionarySpinnerNonExisting.startAnimating()
        if dictionary.keys.contains("Namex") {
            return
        }else {
            let end = DispatchTime.now()
            let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
            let timeInterval = Double(nanoTime) / 1_000_000_000
            DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
                self.dictionarySpinnerNonExisting.stopAnimating()
                self.findNonExistingDictionary.setTitle("It's not existing item time:  \(timeInterval) ms", for: .normal)
        }
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        while i < 1_000_000 {
            i += 1
            array.append(Contact(name: "Name\(i)", phone: "+000\(i)"))
            dictionary.updateValue("+000\(i)", forKey: "Name\(i)")
            
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
