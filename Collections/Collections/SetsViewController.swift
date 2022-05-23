//
//  SetsViewController.swift
//  Collections
//
//  Created by Admin on 15.05.2022.
//

import UIKit

class SetsViewController: UIViewController {
    
    @IBOutlet weak var firstTF: UITextField!
    @IBOutlet weak var secondTF: UITextField!
    @IBOutlet weak var sameLettersButton: UIButton!
    @IBOutlet weak var notMatchButton: UIButton!
    @IBOutlet weak var uniqueCharsButton: UIButton!
    @IBOutlet weak var sameLettersLabel: UILabel!
    @IBOutlet weak var notMatchLabel: UILabel!
    @IBOutlet weak var uniqueCharsLabel: UILabel!
    @IBAction func sameLettersAction(_ sender: Any) {
        guard let firstText = firstTF.text, let secondText = secondTF.text else {return}
        var string = ""
        for ch in firstText {
            for letter in secondText {
                if ch == letter {
                    if !string.contains(ch) {
                        string += String(ch)
                    }
                }
            }
        }
        sameLettersLabel.text = "\(string)"
    }
    @IBAction func notMatchAction(_ sender: Any) {
        guard let firstText = firstTF.text, let secondText = secondTF.text else {return}
        var string = ""
        for ch in firstText {
            if !secondText.contains(ch) {
                string += String(ch)
            }
        }
        notMatchLabel.text = "\(string)"
    }
    @IBAction func uniqueCharAction(_ sender: Any) {
        guard let firstText = firstTF.text, let secondText = secondTF.text else {return}
        var string = ""
        for ch in firstText {
            if !secondText.contains(ch) {string += String(ch)}
        }
        for letter in secondText {
            if !firstText.contains(letter) {string += String(letter)}
        }
        uniqueCharsLabel.text = "\(string)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     qwerty
     qw
     erty
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
