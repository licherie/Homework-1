//
//  AddVerbTableViewCell.swift
//  toy
//
//  Created by Cherie Li on 11/3/18.
//  Copyright © 2018 Cherie Li. All rights reserved.
//

import UIKit

var selected = 0

struct MyTeForm {
    static var teform = ""
}

struct MyName{
    static var name = ""
}

struct MyPotentialForm{
    static var potentialform = ""
}

class AddVerbTableViewCell: UITableViewCell, UITextViewDelegate,
UIPickerViewDelegate, UIPickerViewDataSource{
    
    var CreateVerbViewController : AddVerbViewController?
    
    @IBOutlet weak var TextView: UITextView!
    
    @IBOutlet weak var PickerView: UIPickerView!
    
    func canSubmit() -> Bool {
        return MyTeForm.teform != "" && MyPotentialForm.potentialform != "" && MyName.name != ""
    }
    
    
    var pickerData: [String] = [String]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        PickerView.delegate = self
        PickerView.dataSource = self
        TextView.delegate = self
        // Initialization code
        pickerData = ["って", "んで", "いて", "いで", "して", "いって", "きて"]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
        // Configure the view for the selected state
    }
    
    //MARK:  - Picker View Methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //selecting teform
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 7
    }
   

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected = row
        MyTeForm.teform = pickerData[row]
        // reload the second section to change data
        //how can we access table view if it's in another class?

    CreateVerbViewController?.TableView.reloadSections(IndexSet.init(integer: 1), with :.automatic)
        
        if (canSubmit()) {
            CreateVerbViewController?.DoneButton.isEnabled = true
        } else {
            CreateVerbViewController?.DoneButton.isEnabled = false
        }
        
    }
    // MARK: Text View Methods
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if (textView.textColor == UIColor.gray ) {
            textView.text = ""
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        if(textView.tag == 0) {
            MyName.name = textView.text
        } else {
            MyPotentialForm.potentialform = textView.text
        }
        if (canSubmit()) {
            CreateVerbViewController?.DoneButton.isEnabled = true
        } else {
            CreateVerbViewController?.DoneButton.isEnabled = false
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if (textView.text == ""){
            if(textView.tag == 0) {
                textView.text = "Name"
            } else {
                textView.text = "Potential Form"
            }
            textView.textColor = UIColor.gray
        }
    }
    
}
