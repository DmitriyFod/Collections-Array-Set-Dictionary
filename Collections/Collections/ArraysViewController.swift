//
//  ArraysViewController.swift
//  Collections
//
//  Created by Admin on 15.05.2022.
//

import UIKit

class ArraysViewController: UIViewController {
    @IBOutlet weak var createArray: UIButton!
    @IBOutlet weak var inserAtBegin: UIButton!
    @IBOutlet weak var insertAtMiddle: UIButton!
    @IBOutlet weak var insertAtEnd: UIButton!
    @IBOutlet weak var removeFromBegin: UIButton!
    @IBOutlet weak var removeFromMiddle: UIButton!
    @IBOutlet weak var removeFromEnd: UIButton!
    @IBOutlet weak var loadingCreating: UIActivityIndicatorView!
    @IBOutlet weak var loadingBegin: UIActivityIndicatorView!
    @IBOutlet weak var loadingMiddle: UIActivityIndicatorView!
    @IBOutlet weak var loadingEnd: UIActivityIndicatorView!
    @IBOutlet weak var loadingBeginRemove: UIActivityIndicatorView!
    @IBOutlet weak var loadingMiddleRemove: UIActivityIndicatorView!
    @IBOutlet weak var loadingEndRemove: UIActivityIndicatorView!
    var i = 0
    var array = [Int]()
    @IBAction func creatingArray(_ sender: Any) {
        let start = DispatchTime.now()
        createArray.setTitle("", for: .normal)
        loadingCreating.startAnimating()
        while i < 10_000_000 {
            i += 1
            array.append(i)
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.loadingCreating.stopAnimating()
            self.createArray.setTitle("Array creation time:  \(timeInterval) ms", for: .normal)
            self.inserAtBegin.isHidden = false
            self.insertAtMiddle.isHidden = false
            self.insertAtEnd.isHidden = false
            self.removeFromBegin.isHidden = false
            self.removeFromMiddle.isHidden = false
            self.inserAtBegin.isHidden = false
            self.removeFromEnd.isHidden = false
        }
    }
    @IBAction func insert1000AtTheBegin(_ sender: Any) {
        var i = 0
        let start = DispatchTime.now()
        inserAtBegin.setTitle("", for: .normal)
        loadingBegin.startAnimating()
        while i < 1000 {
            i += 1
            array.insert(i, at: i - 1)
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.loadingBegin.stopAnimating()
            self.inserAtBegin.setTitle("Insertion time:  \(timeInterval) ms", for: .normal)
        }
    }
    @IBAction func insert1000AtTheMiddle(_ sender: Any) {
        var i = 0
        let start = DispatchTime.now()
        insertAtMiddle.setTitle("", for: .normal)
        loadingMiddle.startAnimating()
        while i < 1000 {
            i += 1
            array.insert(i, at: i + Int(array.count / 2))
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.loadingMiddle.stopAnimating()
            self.insertAtMiddle.setTitle("Insertion time:  \(timeInterval) ms", for: .normal)
        }
    }
    @IBAction func insert1000AtTheEnd(_ sender: Any) {
        var i = 0
        let start = DispatchTime.now()
        insertAtEnd.setTitle("", for: .normal)
        loadingEnd.startAnimating()
        while i < 1000 {
            i += 1
            array.append(i)
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.loadingEnd.stopAnimating()
            self.insertAtEnd.setTitle("Insertion time:  \(timeInterval) ms", for: .normal)
        }
    }
    @IBAction func remove1000AtTheBegin(_ sender: Any) {
        var i = 0
        let start = DispatchTime.now()
        removeFromBegin.setTitle("", for: .normal)
        loadingBeginRemove.startAnimating()
        while i < 1000 {
            i += 1
            array.remove(at: i - 1)
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.loadingBeginRemove.stopAnimating()
            self.removeFromBegin.setTitle("Removing time:  \(timeInterval) ms", for: .normal)
        }
    }
    @IBAction func remove1000AtTheMiddle(_ sender: Any) {
        var i = 0
        let start = DispatchTime.now()
        removeFromMiddle.setTitle("", for: .normal)
        loadingMiddleRemove.startAnimating()
        while i < 1000 {
            i += 1
            array.remove(at: i + array.count / 2)
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.loadingMiddleRemove.stopAnimating()
            self.removeFromMiddle.setTitle("Removing time:  \(timeInterval) ms", for: .normal)
        }
    }
    @IBAction func remove1000AtTheEnd(_ sender: Any) {
        var i = 0
        let start = DispatchTime.now()
        removeFromEnd.setTitle("", for: .normal)
        loadingEndRemove.startAnimating()
        while i < 1000 {
            i += 1
            array.remove(at: i + (array.count - 1001))
        }
        let end = DispatchTime.now()
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
        let timeInterval = Double(nanoTime) / 1_000_000_000
        DispatchQueue.main.asyncAfter(deadline: .now() + timeInterval) {
            self.loadingEndRemove.stopAnimating()
            self.removeFromEnd.setTitle("Removing time:  \(timeInterval) ms", for: .normal)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */

