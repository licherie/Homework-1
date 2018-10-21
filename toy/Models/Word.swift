//
//  Astro.swift
//  toy
//
//  Created by Cherie Li on 10/20/18.
//  Copyright © 2018 Cherie Li. All rights reserved.
//

import UIKit

class Word: NSObject {
    struct WordCellInfo {
        let name : String!
        let meaning : UIImage!
        let potentialform : String!
        let teform : String!
    }
    
    static var count : Int = 0
    static var wordArr = [WordCellInfo]()
    
    class func addVerb(name : String!, meaning: UIImage,
                       potentialform: String!, teform: String!) -> Void {
        wordArr.append(WordCellInfo(name: name, meaning: meaning, potentialform: potentialform, teform: teform))
        count += 1
    }
}

