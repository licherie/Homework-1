//
//  ViewController.swift
//  toy
//
//  Created by Cherie Li on 10/13/18.
//  Copyright © 2018 Cherie Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var signLabel: UILabel!
    var submitpressed : Bool = false
    @IBOutlet weak var nametextfield: UITextField!
    @IBOutlet weak var signtextfield: UITextField!
    @IBOutlet weak var SubmitButton: UIButton!
    @IBOutlet weak var displaylabel: UILabel!
    func ready_to_clear() -> Void {
        nameLabel.isHidden = true
        signLabel.isHidden = true
        nametextfield.isHidden = true
        signtextfield.isHidden = true
        displaylabel.isHidden = false
        SubmitButton.setTitle("Clear", for: .normal)
        submitpressed = true
    }
    func ready_to_submit() -> Void {
        nameLabel.isHidden = false
        signLabel.isHidden = false
        nametextfield.isHidden = false
        signtextfield.isHidden = false
        displaylabel.isHidden = true
        SubmitButton.setTitle("Submit", for: .normal)
        submitpressed = false
    }
    @IBAction func submitbuttontapped(_ sender: Any) {
        if(submitpressed) {
            UserDefaults.standard.removeObject(forKey: "name")
            UserDefaults.standard.removeObject(forKey: "sign")
            ready_to_submit()
            }
        else {
            nameLabel.isHidden = true
            signLabel.isHidden = true
            nametextfield.isHidden = true
            signtextfield.isHidden = true
            displaylabel.isHidden = false
            let name = nametextfield.text ?? ""
            let sign = signtextfield.text ?? ""
            displaylabel.text = "So, " + name + " you are a " + sign
            nametextfield.text = ""
            signtextfield.text = ""
            displaylabel.isHidden = false
            SubmitButton.setTitle("Clear", for: .normal)
            submitpressed = true
            UserDefaults.standard.set(name, forKey: "name")
            UserDefaults.standard.set(sign, forKey: "sign")
            ready_to_clear()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if (UserDefaults.standard.object(forKey: "name") != nil && UserDefaults.standard.object(forKey: "sign") != nil){
            let name = UserDefaults.standard.string(forKey: "name") ?? ""
            let sign = UserDefaults.standard.string(forKey: "sign") ?? ""
            displaylabel.text = "So, " + name + "you are a " + sign
            ready_to_clear()
        }
        else {
            ready_to_submit()
        }
        if (Word.count == 0) {
            Word.addVerb(name: "いく", meaning: #imageLiteral(resourceName: "20100613-222"), potentialform: "いける", teform: "言って")
              Word.addVerb(name: "食べる", meaning: #imageLiteral(resourceName: "15683193341_7a3594dd53_k"), potentialform: "食べられる", teform: "食べて")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

