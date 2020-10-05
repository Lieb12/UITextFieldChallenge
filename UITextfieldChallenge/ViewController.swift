//
//  ViewController.swift
//  UITextfieldChallenge
//
//  Created by  on 9/30/20.
//  Copyright © 2020 Owen Lieberman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var sayHello: UIButton!
    @IBOutlet weak var languageCtrl: UISegmentedControl!
    let greetings = ["Hello", "Hola", "こんにちは"]
    var username: String = "";
    var greetingNum: Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sayHello.layer.cornerRadius = 12
        languageCtrl.tintColor = UIColor.white
        
    }
    
    @IBAction func openKB(_ sender: Any) {
        self.nameField.becomeFirstResponder()
    }
    
    @IBAction func dismissKB(_ sender: Any) {
        self.nameField.endEditing(true)
    }
    @IBAction func sayHello(_ sender: Any) {
        if (nameField.text != "") {
        self.nameField.endEditing(true)
        self.nameField.resignFirstResponder()
        greetingNum = languageCtrl.selectedSegmentIndex
        username = nameField.text!
        nameField.text = ""
            topLabel.text = "\(greetings[greetingNum]), " + "\(username)."
            
        }
    }
}
