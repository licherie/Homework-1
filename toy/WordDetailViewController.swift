//
//  WordDetailViewController.swift
//  toy
//
//  Created by Cherie Li on 10/20/18.
//  Copyright © 2018 Cherie Li. All rights reserved.
//

import UIKit

class WordDetailViewController: UIViewController {

    var name : String! = ""
    var meaning : UIImage!
    var teForm : String! = ""
    var potentialForm : String! = ""
    
    
    @IBOutlet weak var MeaningImage: UIImageView!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var TeFormLabel: UILabel!
    
    @IBOutlet weak var PotentialFormLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NameLabel.text =
           name
        MeaningImage.image =
           meaning
        PotentialFormLabel.text =
            potentialForm
        TeFormLabel.text =
            teForm
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
